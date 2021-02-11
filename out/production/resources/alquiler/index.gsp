<!DOCTYPE html>
<html>
    <head>
        <g:render template="/layouts/meta"/>
        <g:set var="entityName" value="${message(code: 'alquiler.label', default: 'Alquiler')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-alquiler" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-alquiler" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${alquilerList}" />

            <div class="pagination">
                <g:paginate total="${alquilerCount ?: 0}" />
            </div>
        </div>
    </body>
</html>