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
    <div class="col-lg-10" style="float: right;">
        <g:render template="/layouts/peliculas" collection="${peliculaList}"/>
    </div>



    </body>
</html>