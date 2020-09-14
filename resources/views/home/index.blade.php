@extends('layouts.app')

@section('content')
<h2 class="text-center mb-3">Categories</h2>
<div class="row">
   @foreach($categories as $category)

      <div class="col-md-3 mb-5">
        <a href="/category/{{$category->slug}}">
          <img src="{{ $category->img }}" alt="" class="img-fluid">
            {{ $category->name }} ({{$category->products->count()}})
        </a>
      </div>
    @endforeach
</div>
   
<h2 class="text-center mb-3">Products</h2>
<div class="row">
   @foreach($products as $product)

      <div class="col-md-3 mb-5">
        Category: {{$product->category->name}}
        <a href="/category/{{$product->slug}}">
          <img src="{{ $product->img }}" alt="" class="img-fluid">
            {{ $product->name }}
        </a>
        <p>
         Price: {{$product->price}} 
        </p>
        

      </div>
    @endforeach
</div>

@endsection