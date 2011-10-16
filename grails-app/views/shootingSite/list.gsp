
<%@ page import="shootmap.ShootingSite" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'shootingSite.label', default: 'ShootingSite')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'shootingSite.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="accessibility" title="${message(code: 'shootingSite.accessibility.label', default: 'Accessibility')}" />
                        
                            <g:sortableColumn property="approved" title="${message(code: 'shootingSite.approved.label', default: 'Approved')}" />
                        
                            <g:sortableColumn property="distance" title="${message(code: 'shootingSite.distance.label', default: 'Distance')}" />
                        
                            <g:sortableColumn property="latitude" title="${message(code: 'shootingSite.latitude.label', default: 'Latitude')}" />
                        
                            <g:sortableColumn property="lineOfSite" title="${message(code: 'shootingSite.lineOfSite.label', default: 'Line Of Site')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${shootingSiteInstanceList}" status="i" var="shootingSiteInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${shootingSiteInstance.id}">${fieldValue(bean: shootingSiteInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: shootingSiteInstance, field: "accessibility")}</td>
                        
                            <td><g:formatBoolean boolean="${shootingSiteInstance.approved}" /></td>
                        
                            <td>${fieldValue(bean: shootingSiteInstance, field: "distance")}</td>
                        
                            <td>${fieldValue(bean: shootingSiteInstance, field: "latitude")}</td>
                        
                            <td>${fieldValue(bean: shootingSiteInstance, field: "lineOfSite")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${shootingSiteInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
