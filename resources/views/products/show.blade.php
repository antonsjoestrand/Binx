@extends('products.layout')

@section('content')

    <div class="item">
        <div class="item__image">
            <img src="{{ asset('images/'.$product->image) }}" alt="Product" />
        </div>

        <div class="item__content">
            <h2>{{ $product->name }}</h2>
            <p>{!!  $product->description !!}</p>
            <div class="buy">
                <a class="nav-link dark" href="#">Buy Now</a>
                <p class="price">&dollar;{{ $product->price }}</p>
            </div>
        </div>
    </div>

@endsection
