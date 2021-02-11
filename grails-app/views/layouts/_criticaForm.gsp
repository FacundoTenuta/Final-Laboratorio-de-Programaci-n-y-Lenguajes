<div class="col-lg-10" style="margin-top: 2%">
    <p class="info_peli" style="padding-left: 20%">¿Qué te parecio la pelicula?</p>
    <g:form action="opinar" controller="critica" method="POST">
        <ul>
            <p class="info_peli">Valoración:</p>
            <li><g:textField name="valoracion"/></li>
            <p class="info_peli">Descripción:</p>
            <li><g:textArea name="descripcion"/></li>
            <input type="hidden" name="pelicula" value="${pelicula.id}">
            <input type="hidden" name="usuario" value="${session.usuario.id}">
        </ul>
        <g:submitButton name="Aceptar"/>
    </g:form>


</div>