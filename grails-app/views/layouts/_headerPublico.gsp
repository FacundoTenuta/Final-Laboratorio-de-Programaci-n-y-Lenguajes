<nav class="navbar navbar-default" style="border-radius: 18px; background-color: #232323; display: block">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Renta Films</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/pelicula/index">Peliculas</a></li>


            </ul>
            <g:form action="busqueda" controller="principal" class="navbar-form navbar-left" style="width: 65%">
                <div class="form-group" style="width: 80%">
                    <input type="text" class="form-control" name="pelicula" placeholder="Search" style="width: 100%">
                </div>
                <button type="submit" class="btn btn-default">Buscar</button>
            </g:form>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="/login/login">Iniciar Sesion</a></li>
            </ul>
        </div>
    </div>
</nav>