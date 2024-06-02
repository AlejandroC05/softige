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

		<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
  		<style type="text/tailwindcss">
    		@layer utilities {
      			.content-auto {
        			content-visibility: auto;
      			}

				body.bg-color {
					background-image: url("{{ asset('img/model.jpg') }}");
					background-repeat: no-repeat;
					background-size: cover;
				}
    		}
  		</style>
		<!-- <style>
			body.bg-color {
				background-image: url("{{ asset('img/model.jpg') }}");
				background-repeat: no-repeat;
				background-size: cover;
			}
		</style> -->
	</head>
	<body class="bg-color" @if(config('admin.login_background_image'))style="background: url({{config('admin.login_background_image')}}) no-repeat;background-size: cover;"@endif>
		
		<!-- <div class="d-flex justify-content-center align-items-center h-100">
			<div class="login-box">
  				<p>Login</p>
				  	@if($errors->has('attempts'))
						<div class="alert alert-danger m-0 text-center">{{$errors->first('attempts')}}</div>
					@else
  					<form action="{{ admin_url('auth/login') }}" method="post">
					  	<input type="hidden" name="_token" value="{{ csrf_token() }}">
    					<div class="user-box">
      						<input type="text" class="form-control" name="username" id="username" value="{{ old('username') }}" required>
      						<label for="username" class="form-label">Usuario</label>
    					</div>
    					<div class="user-box">
      						<input type="password" class="form-control" name="password" id="password" required>
      						<label for="password" class="form-label">Contraseña</label>

							@if($errors->has('password'))
								<div class="alert alert-danger">{{$errors->first('password') }}</div>
							@endif
						</div>
						
						@if($errors->has('username'))
							<div class="alert text-center text-warning">¡Usuario o contraseña incorrectos!</div>
						@endif

						<button type="submit">
							<span></span>
							<span></span>
							<span></span>
							<span></span>
							Ingresar
						</button>
						
						<a href="/" class="text-end">
							<span></span>
							<span></span>
							<span></span>
							<span></span>
							REGRESAR
						</a>
  					</form>
					@endif
			</div>
		</div> -->
		<div style="animation: slideInFromLeft 1s ease-out;" class="max-w-md w-full bg-gradient-to-r from-blue-800 to-purple-600 rounded-xl shadow-2xl overflow-hidden p-8 space-y-8">
  			<h2 style="animation: appear 2s ease-out;" class="text-center text-4xl font-extrabold text-white">
    		Welcome
  			</h2>
  			<p style="animation: appear 3s ease-out;" class="text-center text-gray-200">
    		Sign in to your account
  			</p>
  			<form method="POST" action="#" class="space-y-6">
    		<div class="relative">
      			<input placeholder="Usuario" class="peer h-10 w-full border-b-2 border-gray-300 text-white bg-transparent placeholder-transparent focus:outline-none focus:border-purple-500" required="" id="email" name="email" type="email">
      			<label class="absolute left-0 -top-3.5 text-gray-500 text-sm transition-all peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-2 peer-focus:-top-3.5 peer-focus:text-purple-500 peer-focus:text-sm" for="email">Email address</label>
    </div>
    <div class="relative">
      <input
        placeholder="Password"
        class="peer h-10 w-full border-b-2 border-gray-300 text-white bg-transparent placeholder-transparent focus:outline-none focus:border-purple-500"
        required=""
        id="password"
        name="password"
        type="password"
      />
      <label
        class="absolute left-0 -top-3.5 text-gray-500 text-sm transition-all peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-2 peer-focus:-top-3.5 peer-focus:text-purple-500 peer-focus:text-sm"
        for="password"
        >Password</label
      >
    </div>
    <div class="flex items-center justify-between">
      <label class="flex items-center text-sm text-gray-200">
        <input
          class="form-checkbox h-4 w-4 text-purple-600 bg-gray-800 border-gray-300 rounded"
          type="checkbox"
        />
        <span class="ml-2">Remember me</span>
      </label>
      <a class="text-sm text-purple-200 hover:underline" href="#"
        >Forgot your password?</a
      >
    </div>
    <button
      class="w-full py-2 px-4 bg-purple-500 hover:bg-purple-700 rounded-md shadow-lg text-white font-semibold transition duration-200"
      type="submit"
    >
      Sign In
    </button>
  </form>
  <div class="text-center text-gray-300">
    Don't have an account?
    <a class="text-purple-300 hover:underline" href="#">Sign up</a>
  </div>
</div>

	</body>
	<!-- <style>
		.login-box {
  			top: 50%;
  			left: 50%;
  			width: 400px;
  			padding: 40px;
  			margin: 20px auto;
  			backdrop-filter: blur(10px);
  			box-sizing: border-box;
  			box-shadow: 3px 3px 21px white;
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
  			padding: 10px 20px;
  			font-weight: bold;
  			color: #fff;
  			font-size: 16px;
  			text-decoration: none;
  			text-transform: uppercase;
  			overflow: hidden;
  			transition: .5s;
  			margin-top: 20px;
  			letter-spacing: 1px
		}

		.login-box form a {
			position: relative;
  			padding: 10px 20px;
  			font-weight: bold;
  			color: #fff;
			top: 65%;
			left: 20%;
			margin-top: 40px;
  			font-size: 16px;
			transform: translate(-30, -40%);
  			text-decoration: none;
  			text-transform: uppercase;
  			overflow: hidden;
  			transition: .5s;
  			letter-spacing: 1px
		}

		.login-box button:hover {
  			background: #fff;
  			color: #272727;
  			border-radius: 10px;
		}

		.login-box a:hover {
			background: #fff;
  			color: #272727;
  			border-radius: 10px;
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

		button {
			background: transparent;
			border-style: none;
		}
	</style> -->
</html>
