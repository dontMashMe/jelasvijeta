<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {       
        return view('dash.index');
    }

    public function store(Request $request)
    {
        if($request->tag_id){ //ako postoje uneseni tagovi validiraj, inace preskoci
            $this->validate($request,[
                'tag_id' => [
                    'regex:/^\d+(((,\d+)?,\d+)?,\d+)?$/', //regex pattern za provjeru stringova odvojenih zarezom, dopusten i jedan string 
                ]
            ]);
        }

        $category_id = $request->category_id; //specifična kategorija
        if($request->category_null) $category_id = 'NULL'; //bez kategorije
        if($request->category_not_null) $category_id = '!NULL'; //sa uključenim kategorijama

        $category = $request->include_category ? "category," : NULL; 
        $tags = $request->include_tags ? "tags," : NULL;
        $ingredients = $request->include_ingredients ? "ingredients" : NULL;
        $with_builder = 'with='.$category.$tags.$ingredients; 

        if(strlen($with_builder)<=7) $with_builder = NULL; //nema 'with' parametara; 
        else $with_builder = rtrim($with_builder, ','); //ako postoji, trimaj trailing comma 


        return redirect()->route('meals', array('per_page'=> $request->per_page, $with_builder , 'category' => $category_id, 'tags'=>$request->tag_id, 'page' => $request->page));
    }

    /*
    pagination = check
    with =  check, check, check  
    category = 1 |NULL|!NULL
    tags = 1,2,3
    lang= HR|ENG|DE 
    =diff_time(?)

    ?per_page=10&tags=1,2,3&lang=hr&with=ingredients,category,tags&diff_time=....&page=2
    10 rezultata po stranci, sa id-evima tagova 1,2,3 (jela moraju sadrzavati te tagove), jezik hrvatski, uključi sastojke, kategorije, tagove, stranica 2, time_diff= od ponedjeljka npr
    */

    
}
