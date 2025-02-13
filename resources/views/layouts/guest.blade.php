<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <!-- Custom Styles -->
    <style>
        /* Fullscreen Video Background */
        .video-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
        }

        .video-container video {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: brightness(50%);
        }

        /* Fallback Background Image */
        .video-container::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            /* background: url('{{ asset('Presento/assets/img/login_vid.mp4') }}') no-repeat center center/cover; */
            filter: brightness(100%);
        }

        /* Page Styling */
        body {
            font-family: 'Figtree', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            color: white;
        }

        /* Login Container */
        .login-container {
            display: flex;
            flex-direction: row;
            background: rgba(20, 20, 20, 0.9);
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(255, 0, 0, 0.3);
            overflow: hidden;
            max-width: 900px;
            width: 100%;
            position: relative;
            z-index: 10;
        }

        /* Left Side - Info Panel */
        .info-panel {
            background: rgba(168, 50, 50, 0.7);
            /* Transparent red background */
            padding: 40px;
            width: 50%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
        }

        /* Right Side - Form Panel */
        .form-panel {
            width: 30%;
            padding: 40px;
            height: 360%;
            background: rgba(34, 34, 34, 0.7);
            /* Transparent dark background */
            border-radius: 10px
        }

        /* Center the 'Login' title */
        .login-title {
            text-align: center;
            font-size: 2rem;
            margin-bottom: 20px;
            color: white;
        }

        /* Input Fields */
        .form-panel input {
            background: rgba(255, 255, 255, 0.1);
            /* Transparent white background */
            border: none;
            padding: 12px;
            color: white;
            width: 100%;
            margin-top: 25px;
            border-radius: 6px;
        }

        .form-panel input:focus {
            outline: none;
            box-shadow: 0 0 5px rgba(255, 0, 0, 0.5);
        }

        /* Button */
        .form-panel button {
            background: #a83232;
            border: none;
            padding: 12px;
            width: 50%;
            margin-left: 20px;
            font-size: 1rem;
            font-weight: bold;
            margin-top: 20px;
            cursor: pointer;
            border-radius: 6px;
            transition: 0.3s;
        }

        .form-panel button:hover {
            background: #ff6565;
        }

        /* Forgot Password */
        .forgot-password {
            text-align: center;
            margin-top: 15px;
            color: white;
        }

        .forgot-password a {
            text-decoration: none;
            font-size: 1rem;
            color: white;
        }

        .forgot-password a:hover {
            text-decoration: none;
        }


        /* Responsive */
        @media (max-width: 768px) {
            .login-container {
                flex-direction: column;
            }

            .info-panel,
            .form-panel {
                width: 100%;
            }
        }
    </style>
</head>

<body>

    <!-- Background Video -->
    <div class="video-container">
        <video autoplay muted loop>
            <source src="{{ asset('Presento/assets/img/login_vid.mp4') }}" type="video/mp4">

            <!-- Fallback message -->
            Your browser does not support the video tag.
        </video>
    </div>

    <!-- Login Box -->
    {{-- <div class="login-container"> --}}

    <!-- Left Side - Info Panel -->
    {{-- <div class="info-panel">
            <h1>Welcome Back</h1>
            <p>Manage your school system efficiently</p>
            <a href="register">Not a member? Sign Up</a>
        </div> --}}

    <!-- Right Side - Login Form -->
    <div class="form-panel">
        {{ $slot }}
    </div></div>

</body>

</html>
