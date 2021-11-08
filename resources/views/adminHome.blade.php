@extends('layouts.nav')

@section('content')

    <!-- HERO -->

    <div class="wrapper">
        @if ($message = Session::get('success'))

            <div class="alert">
                <p>{{ $message }}</p>
            </div>

        @endif
        <div class="hero">
            <div class="highlight">
                <div class="highlight__content">
                    <h3>{{ $products[1]->name }}</h3>
                    <p>Experience the best of the best. Do it the way the best do. Do it easy. And do it in style.</p>
                    <p class="price">&dollar;{{ $products[1]->price }}</p>
                    <div class="actions">
                        <a class="nav-link" href="{{ route('products.edit',$products[1]->id) }}">Edit</a>
                    </div>
                </div>
                <img src="{{ asset('images/highlight.png') }}" alt="Product" />
            </div>
            <div class="scroll">
                <div class="scroll__box">
                </div>
            </div>
        </div>
    </div>

    <!-- COLLECTION -->

    <div class="collection">
        <div id="basket-hoop" class="line">
            <div class="basket"></div>
        </div>
        <div class="side-col side-panel"></div>

        <div class="wrapper">
            <div class="title">
                <h2>Our Collection</h2>
            </div>

            <a class="nav-link dark create" href="{{ route('products.create') }}">Add Product</a>

            <!-- PRODUCT DISPLAY -->

            <div class="products">

                @foreach ($products as $product)

                <div class="products__box">
                    <div class="products__box__image">
                        <img src="{{ asset('images/'.$product->image) }}" alt="Product" />
                    </div>
                    <div class="products__box__content">
                        @if ($product->status == 0)

                        <div class="offline">
                            <p>Product offline</p>
                        </div>

                        @endif

                        <h3>{{ $product->name }}</h3>
                        <p>{{ $product->short_description }}</p>
                        <p class="price">&dollar;{{ $product->price }}</p>
                        <form class="actions" action="{{ route('products.destroy', $product->id) }}" method="POST">
                            <a class="nav-link" href="{{ route('products.edit',$product->id) }}">Edit</a>

                            @csrf
                            @method('DELETE')

                            <button type="submit" class="destroy"><i class="fas fa-trash-alt"></i></button>
                        </form>
                    </div>
                </div>

                @endforeach

            </div>

            <footer>
                <p class="copy">&copy; 2021 Anton Sjöstrand</p>
            </footer>
        </div>
    </div>

@endsection
