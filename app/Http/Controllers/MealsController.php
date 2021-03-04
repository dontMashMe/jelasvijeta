<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Meal;
use \Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;


class MealsController extends Controller
{
    public function index(Request $request)
    {
        $meals = "";
        /* 
        prvo provjeri stanje category parametra 
        parametar ima 4 stanja: 
        -zadan je id 
        -vrijednost NULL (ne postoji kategorija)
        -vrijednost !NULl (gdje postoji kategorija)
        -nije uključen parametar

        switch blok provjerava prva 3 stanja. 
        4. stanje hvata prvi if blok (parametar nije zadan -> kategorija nije bitna)
        
        */
        if(!$request->category)
        {
            $meals = Meal::select('id', 'title', 'description', 'status', 'created_at', 'updated_at', 'category_id')->get();
        }
        else
        {
            switch($request->category) 
            {
                case "NULL":
                    $meals = Meal::select('id', 'title', 'description', 'status', 'created_at', 'updated_at', 'category_id')->where('category_id', '=', NULL)->get();
                    break;
                case "!NULL":
                    $meals = Meal::select('id', 'title', 'description', 'status', 'created_at', 'updated_at', 'category_id')->get();
                    break;
                default: //broj 
                    $meals = Meal::select('id', 'title', 'description', 'status', 'created_at', 'updated_at', 'category_id')->where('category_id', '=', $request->category)->get();
                    break;                    
            }    
        }       
        /*

        prvo provjeri postoji li 'with' parametar u url queryu
        ako postoji:

        "eksplodiraj" string u array 
        za svaku ključnu riječ provjeri nalazi li se u arrayu 
        ako se nalazi, dodaj u response objekt.

        */
        if($request->with)
        {
            $with_parameters_arr = explode(',', $request->with);
            if(in_array('category', $with_parameters_arr))
            {
                foreach($meals as $meal)
                {
                    $category = Category::get()->where('id', $meal->category_id)->toArray();
                    unset($meal->category_id); //category_id se već nalazi u objektu category pa je višak 
                    $meal->setAttribute('category', array_values($category)); //pretvori assoc array u objekt
                }
            }
            //tagovi i sastojci su već povezani preko laravelovih relationshipa 
            if(in_array('ingredients', $with_parameters_arr))
            {
                foreach($meals as $meal)
                {
                    $meal->setAttribute('ingredients', ($meal->ingredients));
                    foreach($meal->ingredients as $ingredient){
                        $ingredient->setAttribute('slug', Self::makeSlug($ingredient->title));
                    }
                    unset($meal->category_id); 
                }
            }
            if(in_array('tags', $with_parameters_arr))
            {
                foreach($meals as $meal)
                {
                    $meal->setAttribute('tags', ($meal->tags));
                    foreach($meal->tags as $tag){
                        $tag->setAttribute('slug', Self::makeSlug($tag->title));
                    }
                    unset($meal->category_id); 

                }
            }
        }

        /*
        
        provjeri postoji li tag parametar
        ako postoji:

        "eksplodiraj" string u array 
        $tagged_meals je array koji ce sadrzavati tagirana jela 

        loopaj kroz jela, za svako jelo loopaj kroz tagove poslane kroz parametar 
        koristeći laravelovu contains() metodu provjer sadržava li kolekcija *SVE* id-eve iz parametra
        ako ne sadržava barem jedan, postavi flag na false i breakaj petlju, nepotrebno je dalje provjeravat
        ako je flag true, dodaj u novi array       
        */
        if($request->tags)
        {
            $tag_parameters_arr = explode(',', $request->tags);
            $tagged_meals = array();
            foreach($meals as $meal)
            {   
                $flag = true;
                for($i = 0; $i < count($tag_parameters_arr); $i++){
                    if(!$meal->tags->contains('id', $tag_parameters_arr[$i])){
                        $flag = false;
                        break;
                    }
                }
                if($flag) array_push($tagged_meals, $meal);
            }
            $meals = $tagged_meals;
        }

        /*
        
        provjeri postoji li parametar per_page ili page 
        ako postoji ijedan:

        ukoliko jedan od parametar nije zadan, postavi mu default vrijednost 
        pretvori array u kolekciju koja se paginira sa laravelom forPage funkcijom 

        
        */
        if($request->per_page || $request->page)
        {
    
            $default_per_page = $request->per_page ? $request->per_page : 10; //ukoliko per_page nije zadan postavi default 10 rezultata po stranici, inace postavi na zadanu vrijednost iz url
            $default_page = $request->page ? $request->page : 1; //ukoliko page nije zadan postavi default prvu stranicu, inace postavi na zadanu vrijednost iz url

            $collection = collect($meals); 
            $meals = $collection->forPage($default_page, $default_per_page); //??magic
         
        }
        echo "<pre>".json_encode($meals, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES)."</pre>";
    }

    private static function makeSlug($title)
    {
        return Str::slug($title, '-');
    }

}