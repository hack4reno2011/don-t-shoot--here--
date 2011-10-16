

<%@ page import="shootmap.ShootingSite" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'shootingSite.label', default: 'ShootingSite')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
        
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${shootingSiteInstance}">
            <div class="errors">
                <g:renderErrors bean="${shootingSiteInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="accessibility"><g:message code="shootingSite.accessibility.label" default="Accessibility" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'accessibility', 'errors')}">
                                    <g:textField name="accessibility" value="${shootingSiteInstance?.accessibility}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approved"><g:message code="shootingSite.approved.label" default="Approved" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'approved', 'errors')}">
                                    <g:checkBox name="approved" value="${shootingSiteInstance?.approved}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="distance"><g:message code="shootingSite.distance.label" default="Distance" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'distance', 'errors')}">
                                    <g:textField name="distance" value="${shootingSiteInstance?.distance}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="latitude"><g:message code="shootingSite.latitude.label" default="Latitude" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'latitude', 'errors')}">
                                    <g:textField name="latitude" value="${shootingSiteInstance?.latitude}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lineOfSite"><g:message code="shootingSite.lineOfSite.label" default="Line Of Site" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'lineOfSite', 'errors')}">
                                    <g:textField name="lineOfSite" value="${shootingSiteInstance?.lineOfSite}" />
                                </td>
                            </tr>
                        
                           
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="longitude"><g:message code="shootingSite.longitude.label" default="Longitude" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'longitude', 'errors')}">
                                    <g:textField name="longitude" value="${shootingSiteInstance?.longitude}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="shootingSite.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${shootingSiteInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="shootingSite.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" value="${shootingSiteInstance?.notes}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="shootingHeading"><g:message code="shootingSite.shootingHeading.label" default="Shooting Heading" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'shootingHeading', 'errors')}">
                                    <g:textField name="shootingHeading" value="${shootingSiteInstance?.shootingHeading}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="summary"><g:message code="shootingSite.summary.label" default="Summary" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: shootingSiteInstance, field: 'summary', 'errors')}">
                                    <g:textField name="summary" value="${shootingSiteInstance?.summary}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
