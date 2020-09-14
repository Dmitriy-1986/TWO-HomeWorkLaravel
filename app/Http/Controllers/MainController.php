<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;

class MainController extends Controller
{
    public function index()
    {
        /* $product = Product::find(1);
        dd($product->category1); */

        $category = Category::find(7);
        //dd($category->products->count());

        $categories = Category::with('products')->get();
        $products = Product::with('category')->where('recomended', 1)->get()->whereNotNull('img');
        
        return view('home.index', compact('categories', 'products'));
    }  
    
    public function contacts()
    {
        return view('home.contacts');
    }

    public function getContacts(Request $request)
    {
        $name = $request->name;
        $category = new Category();
        $category->name = $name;
        $category->slug = \Str::slug($name, '-');
        $category->save();

        //$mes = $request->message;
       /*  return $user . ' - '. $mes; */
        //return back();
       return redirect('/');
    }
}
