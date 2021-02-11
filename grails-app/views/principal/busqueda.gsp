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
<div class="row col-xs-6 col-md-3" >
    <div>
        <g:if test="${pelicula != null}">
            <a href="/pelicula/show/${pelicula.id}" class="thumbnail" style="background-color: #444444">
                <img src="${pelicula.foto}" alt="${pelicula.nombre}">
                <div >
                    <h3 style="text-decoration: none; text-align: center">${pelicula.nombre}</h3>
                </div>
            </a>
        </g:if>
    </div>
</div>


</body>
</html>