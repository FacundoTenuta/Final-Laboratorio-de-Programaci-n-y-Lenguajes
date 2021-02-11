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
        <div id="navbarPrivada" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/pelicula/index">Peliculas</a></li>
            </ul>
            <g:form class="navbar-form navbar-left" style="width: 67%">
                <div class="form-group" style="width: 80%">
                    <input type="text" class="form-control" placeholder="Search" style="width: 100%">
                </div>
                <button type="submit" class="btn btn-default">Buscar</button>
            </g:form>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${session.usuario.usuario}<span class="caret"></span></a>
                    <ul class="dropdown-menu" style="background-color: #919191; border-radius: 18px">
                        <li><g:link controller="pelicula" action="index">Administrar peliculas</g:link></li>
                        <li role="separator" class="divider"></li>
                        <li><g:link controller="categoria" action="index">Administrar categorias</g:link></li>
                        <li><g:link controller="usuario" action="index">Administrar usuarios</g:link></li>
                        <li><g:link controller="alquiler" action="index">Administrar alquileres</g:link></li>
                        <li><g:link controller="login" action="logout">Cerrar sesion</g:link></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>