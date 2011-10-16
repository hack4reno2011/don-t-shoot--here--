class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		// address where the placemarks can be accessed
		"/placemarks*.kml"(controller:"shootingSiteMap", action:"getShootingSites")
		
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
