

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Jela svijeta</title>

        <!-- tailwindcss je piped in u app.css datoteku-->
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    </head>
    <body class="bg-gray-200">
        <nav class="p-6 bg-white flex mb-3">
            <h1>Jela svijeta</h1>
        </nav>
        @yield('content')
    </body>
</html>