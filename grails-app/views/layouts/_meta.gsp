<g:if test="${session.usuario}">
    <g:if test="${session.usuario.admin == true}">
        <meta name="layout" content="admin"/>
    </g:if>
    <g:else>
        <meta name="layout" content="privado"/>
    </g:else>
</g:if>
<g:else>
    <meta name="layout" content="publico"/>
</g:else>
