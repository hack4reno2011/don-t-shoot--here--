package shootmap

class ShootingSite {

	static mapWith = "mongo"
	
    static constraints = {
		linkId nullable: true
    }
	
	String name
	String linkId // public id used to pull record
	String summary // summary to display
	String latitude
	String longitude
	String distance // total distance you can shoot
	String shootingHeading // angle you should be shooting at
	String accessibility // hike, 4wd, 2wd
	String lineOfSite // notes that describe line of site view
	String notes
	Boolean approved
}
