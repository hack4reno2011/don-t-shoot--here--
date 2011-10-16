package shootmap
import static java.util.UUID.randomUUID

class ShootingSiteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [shootingSiteInstanceList: ShootingSite.list(params), shootingSiteInstanceTotal: ShootingSite.count()]
    }

    def create = {
        def shootingSiteInstance = new ShootingSite()
		
        shootingSiteInstance.properties = params
		shootingSiteInstance.linkId = randomUUID().toString();
		
		return [shootingSiteInstance: shootingSiteInstance]
    }

    def save = {
        def shootingSiteInstance = new ShootingSite(params)
        
		if( shootingSiteInstance.linkId == null )
			shootingSiteInstance.linkId = randomUUID().toString();
		
		if (shootingSiteInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'shootingSite.label', default: 'ShootingSite'), shootingSiteInstance.id])}"
            redirect(action: "show", id: shootingSiteInstance.id)
        }
        else {
            render(view: "create", model: [shootingSiteInstance: shootingSiteInstance])
        }
    }

    def show = {
        def shootingSiteInstance = ShootingSite.get(params.id)
		session.linkId = shootingSiteInstance.linkId
        if (!shootingSiteInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'shootingSite.label', default: 'ShootingSite'), params.id])}"
            redirect(action: "list")
        }
        else {
            [shootingSiteInstance: shootingSiteInstance]
        }
    }

    def edit = {
        def shootingSiteInstance = ShootingSite.get(params.id)
        if (!shootingSiteInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'shootingSite.label', default: 'ShootingSite'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [shootingSiteInstance: shootingSiteInstance]
        }
    }

    def update = {
        def shootingSiteInstance = ShootingSite.get(params.id)
        if (shootingSiteInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (shootingSiteInstance.version > version) {
                    
                    shootingSiteInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'shootingSite.label', default: 'ShootingSite')] as Object[], "Another user has updated this ShootingSite while you were editing")
                    render(view: "edit", model: [shootingSiteInstance: shootingSiteInstance])
                    return
                }
            }
            shootingSiteInstance.properties = params
            if (!shootingSiteInstance.hasErrors() && shootingSiteInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'shootingSite.label', default: 'ShootingSite'), shootingSiteInstance.id])}"
                redirect(action: "show", id: shootingSiteInstance.id)
            }
            else {
                render(view: "edit", model: [shootingSiteInstance: shootingSiteInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'shootingSite.label', default: 'ShootingSite'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def shootingSiteInstance = ShootingSite.get(params.id)
        if (shootingSiteInstance) {
            try {
                shootingSiteInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'shootingSite.label', default: 'ShootingSite'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'shootingSite.label', default: 'ShootingSite'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'shootingSite.label', default: 'ShootingSite'), params.id])}"
            redirect(action: "list")
        }
    }
}
