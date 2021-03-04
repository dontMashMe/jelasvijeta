<?php 
use App\Http\Controllers\MealsController;
?>
@extends('layouts.app')

<!-- ovu sekciju "yieldamo" u app.blade.php datoteci -->
@section('content')
    <div class="flex justify-center">
        <div class="w-8/12 bg-white p-6 rounded-lg">
            @if($meals->count()) 
                @foreach($meals as $meal)
                    <div class="mb-4">
                        Ime jela: <a href="" class="font-bold">{{ ucfirst($meal->title) }}</a>
                        <p class="mb-1">Opis jela: {{ $meal->description }}</p>
                        <p class="mb-1">Kategorije: <i>{{ MealsController::getCategoryById($meal->category_id) }}</i></p>
                        <p class="mb-1">Sastojci: {{ MealsController::getIngredients($meal) }} </p>
                        <p class="mb-1">Tagovi: {{ MealsController::getTags($meal) }}</p>
                        <hr>
                        <small>{{ $meal->created_at->diffForHumans() }}</small>
                    </div>
                @endforeach
                <div>
                    <form action="{{route('dash')}}">
                        <button type="submit" class="bg-blue-500 text-white px-4 py-2 mt-2 rounded font-medium">Povratak na formu.</button>
                    </form>
                </div>
            @else
                <p>Nema traženih jela!</p>
                <div>
                    <form action="{{route('dash')}}">
                        <button type="submit" class="bg-blue-500 text-white px-4 py-2 mt-2 rounded font-medium">Povratak na formu.</button>
                    </form>                
                </div>
            @endif
        </div>
    </div>
@endsection