<div width=20%>
Summary: ${shootingsite.summary} <br/>
Location: ${shootingsite.latitude}, ${shootingsite.longitude}  <br/>
Max shot distance: ${shootingsite.distance}  <br/>
Shot Heading: ${shootingsite.shootingHeading}  <br/>
Accessibility: ${shootingsite.accessibility}  <br/>
Line of site: ${shootingsite.lineOfSite}  <br/>
Notes: ${shootingsite.notes} <br/>
</div>
<g:each var="imageId" in="${imageIds}">
	<img height=300px src="${createLink(controller:'image', action:'getImage', id:imageId)}"/>
</g:each>