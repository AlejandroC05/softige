<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Iniciar Sesión</title>
		<link rel="icon" href="{{ asset('img/softige-icon.ico') }}" type="image/x-icon">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

		@if(!is_null($favicon = Admin::favicon()))
		<link rel="shortcut icon" href="{{$favicon}}">
		@endif

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
		<link rel="stylesheet" href="{{ Admin::asset("open-admin/css/styles.css")}}">
		<script src="{{ Admin::asset("bootstrap5/bootstrap.bundle.min.js")}}"></script>

		<style>
			body.bg-color {
				background-image: url("{{ asset('img/model.jpg') }}");
				background-repeat: no-repeat;
				background-size: cover;
			}
		</style>
	</head>
	<body class="bg-color" @if(config('admin.login_background_image'))style="background: url({{config('admin.login_background_image')}}) no-repeat;background-size: cover;"@endif>
		<div class="d-flex justify-content-center align-items-center h-100">
			<div class="container m-4" style="max-width:400px;">
				<h1 class="text-center mb-3 h2 fw-bold"><a class="text-decoration-none text-white" href="{{ admin_url('/') }}">{{config('admin.name')}}</a></h1>
				<div class="bg-body p-4 shadow-sm rounded-3">

					@if($errors->has('attempts'))
						<div class="alert alert-danger m-0 text-center">{{$errors->first('attempts')}}</div>
					@else

					<form action="{{ admin_url('auth/login') }}" method="post">

						<input type="hidden" name="_token" value="{{ csrf_token() }}">
						<div class="mb-3">

							@if($errors->has('username'))
								<div class="alert alert-danger">{{$errors->first('username')}}</div>
							@endif

							<label for="username" class="form-label">{{ __('admin.username') }}</label>
							<div class="input-group mb-3">
								<span class="input-group-text"><i class="fa-solid fa-user"></i></span>
								<input type="text" class="form-control" placeholder="{{ __('admin.username') }}" name="username" id="username" value="{{ old('username') }}" required>
							</div>
						</div>

						<div class="mb-3">
							<label for="password" class="form-label">{{ __('admin.password') }}</label>
							<div class="input-group mb-3">
								<span class="input-group-text"><i class="fa-solid fa-key"></i></span>
								<input type="password" class="form-control" placeholder="{{ __('admin.password') }}" name="password" id="password" required>
							</div>

							@if($errors->has('password'))
								<div class="alert alert-danger">{{$errors->first('password') }}</div>
							@endif
						</div>

						@if(config('admin.auth.remember'))
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input" name="remember" id="remember" value="1"  {{ (old('remember')) ? 'checked="checked"' : '' }}>
							<label class="form-check-label" for="remember">{{ __('admin.remember_me') }}</label>
						</div>
						@endif
					
						<a class="btn btn-secondary float-start" href="/">Regresar</a>

						<div class="clearfix">
							<button type="submit" class="btn float-end btn-primary">{{ __('Continuar') }}</button>
						</div>

					</form>
					@endif
				</div>
			</div>
		</div>
	</body>
</html>
