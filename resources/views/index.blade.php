@extends('layouts.nav')

@section('content')

    <!-- HERO -->

    <div class="wrapper">
        <div class="hero">
            <div class="highlight">
                <div class="highlight__content">
                    <h3>{{ $products[1]->name }}</h3>
                    <p>Experience the best of the best. Do it the way the best do. Do it easy. And do it in style.</p>
                    <p class="price">&dollar;{{ $products[1]->price }}</p>
                    <div class="actions">
                        <a class="nav-link" href="{{ route('products.show',$products[1]->id) }}">Learn More</a>
                        <a href="#"><i class="far fa-shopping-bag"></i></a>
                    </div>
                </div>
                <img src="/images/highlight.png" alt="Product" />
            </div>
            <div class="scroll">
                <div class="scroll__box">
                    <div class="scroll__box__bar">
                        <div class="dot"></div>
                    </div>
                    <div class="scroll__box__text">
                        <p>Scroll</p>
                    </div>
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

            <!-- PRODUCT DISPLAY -->

            <div class="products">

                @foreach ($products as $product)

                @if ($product->status == 1)

                <div class="products__box">
                    <div class="products__box__image">
                        <img src="/images/{{ $product->image }}" alt="Product" />
                    </div>
                    <div class="products__box__content">
                        <h3>{{ $product->name }}</h3>
                        <p>{{ $product->short_description }}</p>
                        <p class="price">&dollar;{{ $product->price }}</p>
                        <div class="actions">
                            <a class="nav-link" href="{{ route('products.show',$product->id) }}">Learn More</a>
                            <a href="#"><i class="far fa-shopping-bag"></i></a>
                        </div>
                    </div>
                </div>

                @endif

                @endforeach

            </div>

            <footer>
                <p class="copy">&copy; 2021 Anton Sjöstrand</p>
            </footer>
        </div>
    </div>

@endsection
