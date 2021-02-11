package movies

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.text.SimpleDateFormat
@Transactional(readOnly = true)
class AlquilerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def static existeAlquiler(Usuario usuario, Pelicula pelicula){
        if (Alquiler.findAllByUsuarioAndPelicula(usuario, pelicula).isEmpty()){
            return false
        }else {
            return true
        }
    }

    def alquilar(Alquiler params){
        def date = new Date()
        def sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss")

        def p = new Alquiler(fecha: sdf.format(date).toString(), duracion: params.duracion, pelicula: params.pelicula, usuario: params.usuario)
        p.save()

        def r = new Random()
        def result = (0..<16).collect { r.nextInt(16) }
                .collect { Integer.toString(it, 16).toUpperCase() }
                .join()
        sendMail {
            to params.usuario.email
            subject "Renta Films - Alquiler de "+params.pelicula.nombre
            text "El codigo de la pelicula es: "+result
        }

        redirect(controller: "pelicula", action: "show", id: params.pelicula.id)
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Alquiler.list(params), model:[alquilerCount: Alquiler.count()]
    }

    def show(Alquiler alquiler) {
        respond alquiler
    }

    def create() {
        respond new Alquiler(params)
    }

    @Transactional
    def save(Alquiler alquiler) {
        if (alquiler == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (alquiler.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond alquiler.errors, view:'create'
            return
        }

        alquiler.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alquiler.label', default: 'Alquiler'), alquiler.id])
                redirect alquiler
            }
            '*' { respond alquiler, [status: CREATED] }
        }
    }

    def edit(Alquiler alquiler) {
        respond alquiler
    }

    @Transactional
    def update(Alquiler alquiler) {
        if (alquiler == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (alquiler.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond alquiler.errors, view:'edit'
            return
        }

        alquiler.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'alquiler.label', default: 'Alquiler'), alquiler.id])
                redirect alquiler
            }
            '*'{ respond alquiler, [status: OK] }
        }
    }

    @Transactional
    def delete(Alquiler alquiler) {

        if (alquiler == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        alquiler.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'alquiler.label', default: 'Alquiler'), alquiler.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alquiler.label', default: 'Alquiler'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
