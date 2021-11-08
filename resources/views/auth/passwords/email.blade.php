@extends('layouts.acc')

@section('content')

<div class="card-body">
    @if (session('status'))
        <div role="alert">
            {{ session('status') }}
        </div>
    @endif

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <div class="form-group">
            <h2>Recovery</h2>
            <p>To send a recovery link to your email.</p>
        </div>

        <div class="form-group">
            <label for="email">{{ __('Email address') }}</label>

            <div>
                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="form-group">
            <div>
                <button type="submit">
                    Send recovery link
                </button>
            </div>
        </div>
    </form>
</div>

@endsection
