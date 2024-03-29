
<%@ page import="shootmap.Image" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'image.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="linkId" title="${message(code: 'image.linkId.label', default: 'Link Id')}" />
                        
                            <g:sortableColumn property="note" title="${message(code: 'image.note.label', default: 'Note')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${imageInstanceList}" status="i" var="imageInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${imageInstance.id}">${fieldValue(bean: imageInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: imageInstance, field: "linkId")}</td>
                        
                            <td>${fieldValue(bean: imageInstance, field: "note")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${imageInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
