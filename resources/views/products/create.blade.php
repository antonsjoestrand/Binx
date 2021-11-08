@extends('products.layout')

@section('content')

<div class="form crud">

        <div class="form-group">
            <a class="nav-link dark" href="{{ url('/admin/home') }}">Back</a>
            <h2>Add Product</h2>
        </div>

    @if ($errors->any())

        <div>
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>

                @foreach ($errors->all() as $error)

                    <li>{{ $error }}</li>

                @endforeach

            </ul>
        </div>

    @endif

        <form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">

            @csrf

            <div class="form-group">
                <label for="name">Name</label>

                <div>
                    <input type="text" name="name" class="form-control" placeholder="The product name">
                </div>
            </div>

            <div class="form-group">
                <label for="short_description">Short description</label>

                <div>
                    <input type="text" name="short_description" class="form-control" placeholder="Type of product">
                </div>
            </div>

            <div class="form-editor">
                <label for="description">Description</label>

                <div class="editor">
                    <textarea class="ck-content" id="editor" name="description"></textarea>
                </div>
            </div>

            <div class="form-group">
                <label for="price">Price</label>

                <div>
                    <input type="text" name="price" class="form-control" placeholder="Price">
                </div>
            </div>

            <div class="form-group">
                <label for="image">Choose image</label>

                <div class="upload">
                    <input type="file" name="image" class="upload-box" placeholder="Image">
                </div>
            </div>

            <div class="form-group">
                <label for="status">Status</label>

                <div class="status">
                    <span>Offline</span>
                    <input type="radio" name="status" class="form-control" value="0" checked="checked">
                    <span>Online</span>
                    <input type="radio" name="status" class="form-control" value="1">
                </div>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>

        </form>
</div>

<script>
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
</script>

@endsection
