package locadora



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class JogoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Jogo.list(params), model:[jogoInstanceCount: Jogo.count()]
    }

    def show(Jogo jogoInstance) {
        respond jogoInstance
    }

    def create() {
        respond new Jogo(params)
    }

    @Transactional
    def save(Jogo jogoInstance) {
        if (jogoInstance == null) {
            notFound()
            return
        }

        if (jogoInstance.hasErrors()) {
            respond jogoInstance.errors, view:'create'
            return
        }

        jogoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'jogo.label', default: 'Jogo'), jogoInstance.id])
                redirect jogoInstance
            }
            '*' { respond jogoInstance, [status: CREATED] }
        }
    }

    def edit(Jogo jogoInstance) {
        respond jogoInstance
    }

    @Transactional
    def update(Jogo jogoInstance) {
        if (jogoInstance == null) {
            notFound()
            return
        }

        if (jogoInstance.hasErrors()) {
            respond jogoInstance.errors, view:'edit'
            return
        }

        jogoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Jogo.label', default: 'Jogo'), jogoInstance.id])
                redirect jogoInstance
            }
            '*'{ respond jogoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Jogo jogoInstance) {

        if (jogoInstance == null) {
            notFound()
            return
        }

        jogoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Jogo.label', default: 'Jogo'), jogoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'jogo.label', default: 'Jogo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
