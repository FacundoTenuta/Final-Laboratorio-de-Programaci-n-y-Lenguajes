<%@ page import="movies.CriticaController" %>
<!DOCTYPE html>
<html>
    <head>
        <g:render template="/layouts/meta"/>
        <style>
            li {list-style-type: none}
            .botonAlquilar{
                margin-left: 20%; margin-right: 20%; margin-top: 2%; border-radius: 60px; background: #ff8265; color: #000;
            }
        </style>
    </head>
    <body>
    <div class="container">
        <g:render template="/layouts/categorias_contenedor"/>
        <div class="col-lg-4" style="padding-left: 10%">
            <img src="${pelicula.foto}" alt="${pelicula.nombre}">
        </div>
        <div class="col-lg-6" style="text-decoration-color: #ffffff">
            <ul>
                <il>
                    <p class="info_peli">Titulo: ${pelicula.nombre}</p>
                    <p class="info_peli">Director: ${pelicula.director}</p>
                    <p class="info_peli">Actores: ${pelicula.actores}</p>
                    <p class="info_peli">Sinopsis: ${pelicula.descripcion}</p>
                    <p class="info_peli">Categorias:<g:render template="/layouts/infoCategorias" collection="${pelicula.categorias}"/></p>
                </il>
            </ul>
        </div>
        <div class="col-lg-6">
            <g:if test="${session.usuario}">
                <g:form action="alquilar" controller="alquiler" method="post">
                    <input type="hidden" name="fecha" value="asd">
                    <input type="hidden" name="duracion" value="48">
                    <input type="hidden" name="pelicula" value="${pelicula.id}">
                    <input type="hidden" name="usuario" value="${session.usuario.id}">
                    <button type="submit" class="col-lg-2" style="margin-left: 20%; margin-right: 20%; margin-top: 2%; border-radius: 60px; background: #ff8265; color: #000;">Alquilar</button>
                </g:form>

                <g:if test="${session.usuario.admin == true}">
                    <a href="/pelicula/edit/${pelicula.id}"><button style="border-radius: 60px; background: #656185; color: #000;">Editar</button></a>
                    <g:form resource="${this.pelicula}" method="DELETE">
                        <input class="delete" type="submit" style="border-radius: 60px; background: #656185; color: #000;" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'a', default: '¿Estas seguro de eliminar esta pelicula?')}');"  />
                    </g:form>
                </g:if>
            </g:if>

            <g:if test="${session.usuario && !movies.CriticaController.existeCritica(session.usuario, pelicula) && movies.AlquilerController.existeAlquiler(session.usuario, pelicula)}">
                    <g:render template="/layouts/criticaForm"/>
            </g:if>


        </div>



    </div>
    <div class="criticas col-lg-6" style="margin-left: 30%">
        <ul>
            <g:render template="/layouts/criticas" collection="${pelicula.criticas}"/>
        </ul>
    </div>



    </body>
</html>
