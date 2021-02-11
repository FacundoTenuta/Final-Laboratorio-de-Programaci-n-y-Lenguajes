<!DOCTYPE html>
<html>
    <head>
        <g:render template="/layouts/meta"/>
        <style>
            li {list-style-type: none}
        </style>
    </head>
    <body>
<div>
    <g:render template="/layouts/categorias_contenedor"/>
</div>
    <g:if test="${session.usuario}">
        <g:if test="${session.usuario.admin == true}">
            <a href="/pelicula/create/"><button style="border-radius: 60px; background: #656185; color: #000;">Agregar pelicula</button></a>
        </g:if>
    </g:if>

    <div class="col-lg-10">
        <g:render template="/layouts/peliculas" collection="${peliculaList}"/>
    </div>



    </body>
</html>