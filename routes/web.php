<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MealsController;
use App\Http\Controllers\DashboardController;
use App\Http\Middleware\TrimStrings;

Route::get('/dash', [DashboardController::class, 'index'])->name('dash');
Route::post('/', [DashboardController::class, 'store'])->name('dash.submit');

//Route::get('/meals', [MealsController::class, 'index'])->name('meals')->middleware(StripEmptyParams::class);


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




//Route::get('/with=ingredients={ingredients?}&category={category?}&tags={tags?}', [MealsController::class, 'index'])->name('meals')->middleware(TrimStrings::class);
Route::get('/meals', [MealsController::class, 'index'])->name('meals');

Route::get('/', [DashboardController::class, 'index'])->name('dash');
Route::post('/', [DashboardController::class, 'store'])->name('dash.store');

//Route::get('/', [MealsController::class, ''])
//Route::get('')
