@extends('adminlte::page')

@section('title', 'Categories')

@section('content_header')
    <h1>Categories</h1>
@stop

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>Img</th>
                <th>Name</th>
                <th>Slug</th>
                <th></th>
            </tr>

        </thead>
        <tbody>
            @foreach($categories as $item)
            <tr>
                <td>{{$loop->iteration}}</td>
                <td> <img src="{{$item->img}}" alt="{{$item->name}}" style="width: 150px"> </td>
                <td>{{$item->name}}</td>
                <td>{{$item->slug}}</td>
                <td>
                <form action="/admin/category/{{$item->id}}" method="POST">
                    @method('DELETE')
                    @csrf
                    <button class="btn btn-danger">delete</button>
                </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
@stop
