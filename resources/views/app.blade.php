<!DOCTYPE html>
<html class="h-full bg-gray-100">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/svg+xml" href="/favicon.svg">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    {{-- Inertia --}}
    <script src="https://polyfill.io/v3/polyfill.min.js?features=smoothscroll,NodeList.prototype.forEach,Promise,Object.values,Object.assign" defer></script>

    {{-- Ping CRM --}}
    <script src="https://polyfill.io/v3/polyfill.min.js?features=String.prototype.startsWith" defer></script>

    <script src="{{ mix('/js/app.js') }}" defer></script>
    @inertiaHead
</head>
<body class="font-sans leading-none text-gray-700 antialiased background">
    @inertia
</body>
</html>

<style>
    .background{
        background: rgb(17,160,154);
        background: linear-gradient(325deg, rgba(17,160,154,1) 0%, rgba(255,255,255,1) 24%);
    }
</style>
