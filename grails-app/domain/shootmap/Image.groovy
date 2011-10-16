package shootmap

class Image {

	static mapsWith="mongo"
	
    static constraints = {
    	linkId nullable: true
		}

	String linkId
	byte[] imageFile
	String note
}
