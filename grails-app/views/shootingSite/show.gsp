
<%@ page import="shootmap.ShootingSite" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'shootingSite.label', default: 'ShootingSite')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.accessibility.label" default="Accessibility" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "accessibility")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.approved.label" default="Approved" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${shootingSiteInstance?.approved}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.distance.label" default="Distance" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "distance")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.latitude.label" default="Latitude" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "latitude")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.lineOfSite.label" default="Line Of Site" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "lineOfSite")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.linkId.label" default="Link Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "linkId")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.longitude.label" default="Longitude" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "longitude")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.shootingHeading.label" default="Shooting Heading" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "shootingHeading")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="shootingSite.summary.label" default="Summary" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: shootingSiteInstance, field: "summary")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${shootingSiteInstance?.id}" />
                    <span class="button"><a href="${createLink(controller:'image', action:'create', params:[linkId: shootingSiteInstance.linkId])}">Add Image</a></span>
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
