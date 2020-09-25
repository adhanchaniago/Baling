<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Baling - Dashboard</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- Datatables -->
    <script src="{{asset('js/jquery-2.2.4.min.js')}}"></script>
    <link href="{{ asset('css/datatables/jquery.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/all.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatables/buttons.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatables/jquery.dataTables_themeroller.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatables/jquery.dataTables.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatables/demo_table_jui.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatables/demo_table.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatables/demo_page.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatables/jquery-ui-1.10.0.custom.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatables/jquery.dataTables.min.css') }}" rel="stylesheet">
    <script src="{{asset('js/datatables/jquery-ui.js')}}"></script>
    <script src="{{asset('js/datatables/jquery.dataTables.js')}}"></script>
    <script src="{{asset('js/datatables/date-eu.js')}}"></script>
    <script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
    <link href="{{ asset('css/datatables/daterangepicker.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                      Baling
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                        &nbsp;
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @if (Auth::guest())
                            <li><a href="{{ route('login') }}">Login</a></li>
                            <li><a href="{{ route('register') }}">Register</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>

        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>

    <script src="{{asset('js/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('js/datatables/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('js/datatables/buttons.flash.min.js')}}"></script>
    <script src="{{asset('js/datatables/jszip.min.js')}}"></script>
    <script src="{{asset('js/datatables/pdfmake.min.js')}}"></script>
    <script src="{{asset('js/datatables/vfs_fonts.js')}}"></script>
    <script src="{{asset('js/datatables/buttons.html5.min.js')}}"></script>
    <script src="{{asset('js/datatables/buttons.print.min.js')}}"></script>
    <script src="{{asset('js/datatables/moment.min.js')}}"></script>
    <script src="{{asset('js/datatables/daterangepicker.min.js')}}"></script>
</body>
</html>
