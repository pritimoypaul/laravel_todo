<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        crossorigin="anonymous">

    <title>@yield('title')</title>
</head>

<body>
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">My Todo List</h5>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="/">Home</a>
            <a class="p-2 text-dark" href="/todos">Todos</a>


        </nav>
        <a class="btn btn-outline-primary" href="/add-todo">Add Todo</a>
    </div>
    @if(session()->has('success'))
    <div id="message" class="container">

        <div class="alert alert-success">
            {{ session()->get('success') }}
        </div>

    </div>

    @endif
    @yield('content')

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <script type="text/javascript">
        $(document).ready( function() {
      $('#message').delay(1000).fadeOut();
    });
    </script>


</body>

</html>