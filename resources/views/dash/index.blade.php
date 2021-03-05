
@extends('layouts.app')

<!-- ovu sekciju "yieldamo" u app.blade.php datoteci -->
@section('content')
    <div class="flex justify-center">
        <div class="w-8/12 bg-white p-6 rounded-lg">
            <form action="{{ route('dash.store') }}" method="POST" class="mb-4">
                @csrf
                <div class="relative inline-flex">
                    <svg class="w-2 h-2 absolute top-0 right-0 m-4 pointer-events-none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 412 232"><path d="M206 171.144L42.678 7.822c-9.763-9.763-25.592-9.763-35.355 0-9.763 9.764-9.763 25.592 0 35.355l181 181c4.88 4.882 11.279 7.323 17.677 7.323s12.796-2.441 17.678-7.322l181-181c9.763-9.764 9.763-25.592 0-35.355-9.763-9.763-25.592-9.763-35.355 0L206 171.144z" fill="#648299" fill-rule="nonzero"/></svg>
                    <select class="border border-gray-300 rounded-full text-gray-600 h-10 pl-5 pr-10 bg-white hover:border-gray-400 focus:outline-none appearance-none" name="lang">
                      <option disabled>Odaberi jezik</option>
                      <option value="hr">Hrvatski</option>
                      <option value="en">English</option>
                    </select>
                  </div>
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
                <div class="flex mt-6 mb-6">
                    <input type="number" name="timestamp" id="timestamp" placeholder="UNIX timestamp" class="bg-gray-100 border-Z p-2 rounded-lg" value="">
                    @error('timestamp')
                        <div class="text-red-500 mt-2 text-sm">
                                {{$message}} 
                        </div>
                    @enderror
                </div>
                <div>
                    <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded font-medium">Pretraži</button>
                </div>
            </form>
        </div>
    </div>
@endsection