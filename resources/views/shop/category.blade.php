@extends('main.layout')

@section('content')

   
<h1 class="text-center mb-3">{{$category->name}}</h1>
<div class="row">
   @foreach($products as $product)

      <div class="col-md-3 mb-5">
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