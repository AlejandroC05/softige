<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>
  <title>Iniciar Sesión</title>
  <link rel="icon" href="{{ asset('img/softige-icon.ico') }}" type="image/x-icon">
  @if(!is_null($favicon = Admin::favicon()))
		<link rel="shortcut icon" href="{{$favicon}}">
	@endif
  <style type="text/tailwindcss">
    		@layer utilities {
      			.content-auto {
        			content-visibility: auto;
      			}
    		}

        body.bg-color {
					background-image: url('/images/background.jpg');
					background-repeat: no-repeat;
          background-position: center;
					background-size: cover;
				}

        @keyframes slideInFromLeft {
          from {
            transform: translateX(-100%);
            opacity: 0;
          }
          to {
            transform: translateX(0);
            opacity: 1;
          }
        }

        @keyframes appear {
          from {
            opacity: 0;
          }
          to {
            opacity: 1;
          }
        }

        .animate-slideInFromLeft {
          animation: slideInFromLeft 1s ease-out;
        }

        .animate-appear {
          animation: appear 2s ease-out;
        }
  </style>
</head>
<body class="bg-color" @if(config('admin.login_background_image'))style="background: url({{config('admin.login_background_image')}}) no-repeat;background-size: cover;"@endif>
  <div class="flex justify-center items-center min-h-screen">
    <div class="w-full max-w-xs sm:max-w-sm md:max-w-md lg:max-w-md xl:max-w-sm border-solid border-4 border-yellow-800 border-yellow-700 bg-gradient-to-r from-gray-700 to-gray-800 rounded-md shadow-2xl overflow-hidden p-8 space-y-8 animate-slideInFromLeft">
      <h2 class="text-center text-4xl font-extrabold text-white animate-appear">
        Bienvenido
      </h2>
      <p class="text-center text-gray-200 animate-appear">
        Inicia sesión a tu cuenta
      </p>
      @if($errors->has('attempts'))
        <div class="alert alert-danger m-0 text-center">{{$errors->first('attempts')}}</div>
      @else
      <form method="post" action="{{ admin_url('auth/login') }}" class="space-y-6">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">

        <!-- Inicio correo y contraseña -->
        <div class="relative">
          <input placeholder="john@example.com" class="peer h-10 w-full border-b-2 border-gray-300 text-white bg-transparent placeholder-transparent focus:outline-none focus:border-purple-500" name="username" id="username" value="{{ old('username') }}" required>
          <label class="absolute left-0 -top-3.5 text-gray-500 text-sm transition-all peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-2 peer-focus:-top-3.5 peer-focus:text-purple-500 peer-focus:text-sm" for="username">Usuario</label>
        </div>

        <div class="relative">
          <input placeholder="Password" class="peer h-10 w-full border-b-2 border-gray-300 text-white bg-transparent placeholder-transparent focus:outline-none focus:border-purple-500" required="" name="password" id="password" type="password" />
          <label class="absolute left-0 -top-3.5 text-gray-500 text-sm transition-all peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-400 peer-placeholder-shown:top-2 peer-focus:-top-3.5 peer-focus:text-purple-500 peer-focus:text-sm" for="password">Contraseña</label>
          @if($errors->has('password'))
            <div class="alert alert-danger">{{$errors->first('password') }}</div>
          @endif
        </div>
        <!-- Fin correo y contraseña -->

        @if($errors->has('username'))
          <div class="alert text-center text-red-600">¡Usuario o contraseña incorrectos!</div>
        @endif

        @if(config('admin.auth.remember'))
        <div class="flex items-center justify-between">
          <label class="flex items-center text-sm text-gray-200">
            <input class="form-checkbox h-4 w-4 text-purple-600 bg-gray-800 border-gray-300 rounded" type="checkbox" name="remember" id="remember" value="1"  {{ (old('remember')) ? 'checked="checked"' : '' }}>
            <span class="ml-2" for="remember">Recuérdame</span>
          </label>
        <a class="text-sm text-purple-200 hover:underline" href="/">Regresar</a>
        </div>
        @endif

        <button class="w-full py-2 px-4 bg-blue-500 hover:bg-blue-700 rounded-lg shadow-lg text-white font-semibold transition duration-200" type="submit">Ingresar</button>
      </form>
      <div class="text-center text-gray-300">
        ¿No tienes una cuenta? <a class="text-purple-300 hover:underline" href="{{ asset('views/contact.php') }}">Solicítala</a>
      </div>
      @endif
    </div>
  </div>
</body>
</html>