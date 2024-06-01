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
		<!-- <div class="d-flex justify-content-center align-items-center h-100">
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
		</div> -->
		<div class="d-flex justify-content-center align-items-center h-100">
		
			<div class="login-box">
  				<p>Login</p>
				  	@if($errors->has('attempts'))
						<div class="alert alert-danger m-0 text-center">{{$errors->first('attempts')}}</div>
					@else
  					<form action="{{ admin_url('auth/login') }}" method="post">
					  	<input type="hidden" name="_token" value="{{ csrf_token() }}">
    					<div class="user-box">
							<label for="username" class="form-label"></label>
							@if($errors->has('username'))
								<div class="alert">{{$errors->first('username')}}</div>
							@endif
      						<input type="text" class="form-control" name="username" id="username" value="{{ old('username') }}" required>
      						<label>Email</label>
    					</div>
    					<div class="user-box">
							<label for="password" class="form-label"></label>
      						<input type="password" class="form-control" name="password" id="password" required>
      						<label>Password</label>
							@if($errors->has('password'))
								<div class="alert alert-danger">{{$errors->first('password') }}</div>
							@endif
						</div>
							
						<button type="submit">
							<span></span>
							<span></span>
							<span></span>
							<span></span>
							Submit
						</button>
  					</form>
					@endif
  				<p>Don't have an account? <a href="" class="a2">Sign up!</a></p>
			</div>
		</div>
	</body>
	<style>
		.login-box {
  			position: absolute;
  			top: 50%;
  			left: 50%;
  			width: 400px;
  			padding: 40px;
  			margin: 20px auto;
  			transform: translate(-50%, -55%);
  			background: rgba(0,0,0,.9);
  			box-sizing: border-box;
  			box-shadow: 0 15px 25px rgba(0,0,0,.6);
  			border-radius: 10px;
		}

.login-box p:first-child {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
  font-size: 1.5rem;
  font-weight: bold;
  letter-spacing: 1px;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}

.login-box .user-box label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #fff;
  font-size: 12px;
}

.login-box form button {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  font-weight: bold;
  color: #fff;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 3px
}

.login-box button:hover {
  background: #fff;
  color: #272727;
  border-radius: 5px;
}

.login-box button span {
  position: absolute;
  display: block;
}

.login-box button span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #fff);
  animation: btn-anim1 1.5s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }

  50%,100% {
    left: 100%;
  }
}

.login-box button span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #fff);
  animation: btn-anim2 1.5s linear infinite;
  animation-delay: .375s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }

  50%,100% {
    top: 100%;
  }
}

.login-box button span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #fff);
  animation: btn-anim3 1.5s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }

  50%,100% {
    right: 100%;
  }
}

.login-box button span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #fff);
  animation: btn-anim4 1.5s linear infinite;
  animation-delay: 1.125s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }

  50%,100% {
    bottom: 100%;
  }
}

.login-box p:last-child {
  color: #aaa;
  font-size: 14px;
}

.login-box button.a2 {
  color: #fff;
  text-decoration: none;
}

.login-box button.a2:hover {
  background: transparent;
  color: #aaa;
  border-radius: 5px;
}
	</style>
</html>
