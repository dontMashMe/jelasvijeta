
@extends('layouts.app')

<!-- ovu sekciju "yieldamo" u app.blade.php datoteci -->
@section('content')
    <div class="flex justify-center">
        <div class="w-8/12 bg-white p-6 rounded-lg">
            <form action="{{ route('dash.store') }}" method="POST" class="mb-4">
                @csrf
                <div class="flex mt-6 mb-6">
                    <label class="flex items-center">
                      <input type="checkbox" class="form-checkbox" name="include_tags" id="include_tags">
                      <span class="ml-2">Uključi tagove</span>
                    </label>
                </div>
                <div class="flex mt-6 mb-6">
                    <label class="flex items-center">
                      <input type="checkbox" class="form-checkbox" name="include_category" id="include_category">
                      <span class="ml-2">Uključi kategorije</span>
                    </label>
                </div>
                <div class="flex mt-6 mb-6">
                    <label class="flex items-center">
                      <input type="checkbox" class="form-checkbox" name="include_ingredients" id="include_ingredients">
                      <span class="ml-2">Uključi sastojke</span>
                    </label>
                </div>
                <div class="mb-4">
                    <label for="category_id" class="sr-only">ID</label>
                    <input type="number" name="category_id" id="category_id" placeholder="Category id" class="bg-gray-100 border-Z p-4 rounded-lg" value="">
                    <span class="ml-2">NULL</span>
                    <input type="checkbox" class="form-checkbox" name="category_null" id="category_null">
                    <span class="ml-2">!NULL</span>
                    <input type="checkbox" class="form-checkbox" name="category_not_null" id="category_not_null">
                </div>
                <div class="mb-4">
                    <label for="tag_id" class="sr-only">ID</label>
                    <input type="text" name="tag_id" id="tag_id" placeholder="Tag id" class="bg-gray-100 border-Z p-4 rounded-lg" value="">
                    <br><small>ID-eve odvoji zarezom, npr: 3,4,5</small>
                    @error('tag_id')
                        <div class="text-red-500 mt-2 text-sm">
                                {{$message}} 
                        </div>
                    @enderror
                </div>
                <div class="flex mt-6 mb-6">
                    <input type="number" name="per_page" id="per_page" placeholder="Per page" class="bg-gray-100 border-Z p-2 rounded-lg" value="">
                    <input type="number" name="page" id="page" placeholder="Page" class="bg-gray-100 border-Z p-2 rounded-lg ml-2" value="">
                </div>
                <div>
                    <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded font-medium">Pretraži</button>
                </div>
            </form>
        </div>
    </div>
@endsection