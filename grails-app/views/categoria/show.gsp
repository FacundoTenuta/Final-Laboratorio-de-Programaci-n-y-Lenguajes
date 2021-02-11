<!DOCTYPE html>
<html>
    <head>
        <g:render template="/layouts/meta"/>
    </head>
    <body>
    <div class="container">
        <g:render template="/layouts/categorias_contenedor"/>

        <g:if test="${session.usuario.admin == true}">
            <a href="/categoria/edit/${categoria.id}"><button style="border-radius: 60px; background: #656185; color: #000;">Editar categoría</button></a>
            <g:form resource="${this.categoria}" method="DELETE">
                <input class="delete" type="submit" style="border-radius: 60px; background: #656185; color: #000;" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: "a", default: '¿Estas seguro de eliminar esta categoría?')}');"  />
            </g:form>
        </g:if>

        <h1 style="color: whitesmoke">${categoria.nombre}:</h1>
        <div class="col-lg-10">
            <g:render template="/layouts/infoPeliculas" collection="${categoria.peliculas}"/>
        </div>

    </div>



    </body>
</html>
