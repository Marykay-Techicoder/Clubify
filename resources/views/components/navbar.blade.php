<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Clubify</title>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.bunny.net">
  <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />

  <!-- Styles -->
  <style>
    /* ! tailwindcss v3.2.4 | MIT License | https://tailwindcss.com */
    *,

    .grid-cols-1 {
      grid-template-columns: repeat(1, minmax(0, 1fr))
    }

    .items-center {
      align-items: center
    }

    .justify-center {
      justify-content: center
    }

    .gap-6 {
      gap: 1.5rem
    }

    .gap-4 {
      gap: 1rem
    }

    .self-center {
      align-self: center
    }

    .rounded-lg {
      border-radius: 0.5rem
    }

    .rounded-full {
      border-radius: 9999px
    }



    .stroke-red-500 {
      stroke: #ef4444
    }

    .stroke-gray-400 {
      stroke: #9ca3af
    }

    .p-6 {
      padding: 1.5rem
    }

    .px-6 {
      padding-left: 1.5rem;
      padding-right: 1.5rem
    }

    .text-center {
      text-align: center
    }

    .text-right {
      text-align: right
    }

    .text-xl {
      font-size: 1.25rem;
      line-height: 1.2rem
    }

    .text-sm {
      font-size: 0.875rem;
      line-height: 1.25rem
    }

    .font-semibold {
      font-weight: 300
    }

    .leading-relaxed {
      line-height: 1.625
    }

    .text-gray-600 {
      --tw-text-opacity: 1;
      color: rgb(75 85 99 / var(--tw-text-opacity))
    }

    .text-gray-900 {
      --tw-text-opacity: 1;
      color: rgb(17 24 39 / var(--tw-text-opacity))
    }




    .hover\:text-black:hover {
      --tw-text-opacity: 1;
      color: rgb(17 24 39 / var(--tw-text-opacity))
    }

    .hover\:text-gray-700:hover {
      --t-text-opacity: 1;
      color: rgb(55 65 81 / var(--tw-text-opacity))
    }

    .focus\:rounded-sm:focus {
      border-radius: 0.125rem
    }

    .focus\:outline:focus {
      outline-style: solid
    }

    .focus\:outline-2:focus {
      outline-width: 2px
    }

    .focus\:outline-red-500:focus {
      outline-color: #ef4444
    }

    .group:hover .group-hover\:stroke-gray-600 {
      stroke: #4b5563
    }

    .z-10 {
      z-index: 10
    }

    @media (prefers-reduced-motion: no-preference) {
      .motion-safe\:hover\:scale-\[1\.01\]:hover {
        --tw-scale-x: 1.01;
        --tw-scale-y: 1.01;
        transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
      }
    }

    @media (prefers-color-scheme: dark) {
      .dark\:bg-gray-900 {
        --tw-bg-opacity: 1;
        background-color: rgb(17 24 39 / var(--tw-bg-opacity))
      }

      .dark\:bg-gray-800\/50 {
        background-color: rgb(31 41 55 / 0.5)
      }

      .dark\:bg-red-800\/20 {
        background-color: rgb(153 27 27 / 0.2)
      }

      .dark\:bg-dots-lighter {
        background-image: url("data:image/svg+xml,%3Csvg width='30' height='30' viewBox='0 0 30 30' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M1.22676 0C1.91374 0 2.45351 0.539773 2.45351 1.22676C2.45351 1.91374 1.91374 2.45351 1.22676 2.45351C0.539773 2.45351 0 1.91374 0 1.22676C0 0.539773 0.539773 0 1.22676 0Z' fill='rgba(255,255,255,0.07)'/%3E%3C/svg%3E")
      }

      .dark\:bg-gradient-to-bl {
        background-image: linear-gradient(to bottom left, var(--tw-gradient-stops))
      }

      .dark\:stroke-gray-600 {
        stroke: #4b5563
      }

      .dark\:text-gray-400 {
        --tw-text-opacity: 1;
        color: rgb(156 163 175 / var(--tw-text-opacity))
      }

      .dark\:text-white {
        --tw-text-opacity: 1;
        color: rgb(255 255 255 / var(--tw-text-opacity))
      }

      .dark\:shadow-none {
        --tw-shadow: 0 0 #0000;
        --tw-shadow-colored: 0 0 #0000;
        box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)
      }

      .dark\:ring-1 {
        --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
        --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);
        box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)
      }

      .dark\:ring-inset {
        --tw-ring-inset: inset
      }

      .dark\:ring-white\/5 {
        --tw-ring-color: rgb(255 255 255 / 0.05)
      }

      .dark\:hover\:text-white:hover {
        --tw-text-opacity: 1;
        color: rgb(255 255 255 / var(--tw-text-opacity))
      }

      .group:hover .dark\:group-hover\:stroke-gray-400 {
        stroke: #9ca3af
      }
    }

    @media (min-width: 640px) {
      .sm\:fixed {
        position: fixed
      }

      .sm\:top-0 {
        top: 0px
      }

      .sm\:right-0 {
        right: 0px
      }

      .sm\:ml-0 {
        margin-left: 0px
      }

      .sm\:flex {
        display: flex
      }

      .sm\:items-center {
        align-items: center
      }

      .sm\:justify-center {
        justify-content: center
      }

      .sm\:justify-between {
        justify-content: space-between
      }

      .sm\:text-left {
        text-align: left
      }

      .sm\:text-right {
        text-align: right
      }
    }

    @media (min-width: 768px) {
      .md\:grid-cols-2 {
        grid-template-columns: repeat(2, minmax(0, 1fr))
      }
    }

    @media (min-width: 1024px) {
      .lg\:gap-8 {
        gap: 2rem
      }

      .lg\:p-8 {
        padding: 2rem
      }
    }
  </style>
</head>

<body class="antialiased">
  <div
    class="relative sm:flex sm:justify-center sm:items-center min-h-screen bg-dots-darker bg-center bg-gray-100 dark:bg-dots-lighter dark:bg-gray selection:bg-red-500 selection:text-dark">
    @if (Route::has('login'))
    <div class="sm:fixed sm:top-0 sm:right-0 p-3 text-right z-5">
      @auth
      <a href="{{ url('/dashboard') }}"
        class="font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-dark focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">Dashboard</a>
      @else
      {{-- <a href="{{ route('login') }}"
        class="font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-dark focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">Log
        in</a> --}}

      @if (Route::has('register'))
      <a href="{{ route('register') }}"
        class="ml-1 font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-dark focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">
        Register</a>
        @endif
        @endauth
    </div>
    @endif

    <div> <img style="width: 25px; height: 25px; margin-right:20px" src="{{asset('Presento/assets/img/notification.png')}}"
        alt="notification" data-aos="fade-in" />
    </div>
    <script>
      document.getElementById('toggleNotifications').addEventListener('click', function() {
        fetch('/toggle-notifications', {
            method: 'PO-ST',
            headers: {
              'X-CSRF-TOKEN': '{{ csrf_token() }}',
              'Content-Type': 'application/json'
            }
          }).then(respose => respone.json())
          .th(data => {
            alert('Notifications ' + (data.notifications_enabled ? 'Enabled' : 'Disabled'));
          });
      });
    </script>