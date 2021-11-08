@extends('layouts.acc')

@section('content')

<div class="card-body">
    <form method="POST" action="{{ route('login') }}">
        @csrf

        <div class="form-group">
            <h2>Login</h2>
            <p>To access your Binx account.</p>
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
            <div class="form-group-row">
                <label for="password">{{ __('Password') }}</label>
                @if (Route::has('password.request'))
                    <a href="{{ route('password.request') }}">
                        {{ __('Forgot your password?') }}
                    </a>
                @endif
            </div>

            <div>
                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="form-group">
            <div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                    <label class="form-check-label" for="remember">
                        {{ __('Remember me') }}
                    </label>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div>
                <button type="submit">
                    {{ __('Login') }}
                </button>
            </div>
        </div>

        <div class="form-group register">
            <p>Don't have an account? <a href="{{ route('register') }}">Register now</a></p>
        </div>
    </form>
</div>

@endsection
