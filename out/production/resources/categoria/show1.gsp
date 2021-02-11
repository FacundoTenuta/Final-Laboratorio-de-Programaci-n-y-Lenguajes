<!DOCTYPE html>
<html>
    <head>
        <g:render template="/layouts/meta"/>
    </head>
    <body>
    <div class="container">
        <g:render template="/layouts/categorias_contenedor"/>

        <h1 style="color: whitesmoke">${categoria.nombre}:</h1>
        <div>
            <g:render template="/layouts/peliculas" collection="${categoria.peliculas}"/>
        </div>

    </div>



    </body>
</html>
