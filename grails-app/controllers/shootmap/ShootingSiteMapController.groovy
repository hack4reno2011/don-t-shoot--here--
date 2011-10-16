package shootmap

class ShootingSiteMapController {

    def index = { 
		render(view: "ShootingSiteMap")
	}
	
	def getShootingSites = {
		cache false
		
		def writer = new StringWriter()
		def xml = new groovy.xml.MarkupBuilder(writer)
		xml.kml(xmlns:"http://www.opengis.net/kml/2.2"){
			Document(){
				name("placemarks.klm")

				Style(id: "s1"){
					BalloonStyle(''){  
						text(''){
							
						}
					}
				}

				for( s in ShootingSite.findAll()){
					Placemark(id:"$s.linkId"){
						name(s.name)
						styleUrl("#s1")
						visibility(1)
						description('')
						{
							//writer.write("<![CDATA[$s.summary<br/><br/><a href=\"javascript:void()\" onclick=\"showDetail.call($s.linkId)\" >Details</a>]]>")
							writer.write("<![CDATA[$s.summary]]>")
						}
						Point(){
							coordinates("$s.latitude,$s.longitude")
						}
						
					}
				}
			}
		}
		
		render(contentType:"text/xml",encoding:"UTF-8", text: writer.toString())
	}	

	
	def getDetails = {
		//get the linkId from the request
		render( template: "ShootingSiteDetails", model: [shootingsite: ShootingSite.findByLinkId(params.id), imageIds: Image.findAllByLinkId(params.id).collect { it.id }] )
	}
}
