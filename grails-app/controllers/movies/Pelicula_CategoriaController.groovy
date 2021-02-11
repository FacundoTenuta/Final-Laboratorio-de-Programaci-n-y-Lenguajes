package movies

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Pelicula_CategoriaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pelicula_Categoria.list(params), model:[pelicula_CategoriaCount: Pelicula_Categoria.count()]
    }

    def show(Pelicula_Categoria pelicula_Categoria) {
        respond pelicula_Categoria
    }

    def create() {
        respond new Pelicula_Categoria(params)
    }

    @Transactional
    def save(Pelicula_Categoria pelicula_Categoria) {
        if (pelicula_Categoria == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (pelicula_Categoria.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond pelicula_Categoria.errors, view:'create'
            return
        }

        pelicula_Categoria.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pelicula_Categoria.label', default: 'Pelicula_Categoria'), pelicula_Categoria.id])
                redirect pelicula_Categoria
            }
            '*' { respond pelicula_Categoria, [status: CREATED] }
        }
    }

    def edit(Pelicula_Categoria pelicula_Categoria) {
        respond pelicula_Categoria
    }

    @Transactional
    def update(Pelicula_Categoria pelicula_Categoria) {
        if (pelicula_Categoria == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (pelicula_Categoria.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond pelicula_Categoria.errors, view:'edit'
            return
        }

        pelicula_Categoria.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'pelicula_Categoria.label', default: 'Pelicula_Categoria'), pelicula_Categoria.id])
                redirect pelicula_Categoria
            }
            '*'{ respond pelicula_Categoria, [status: OK] }
        }
    }

    @Transactional
    def delete(Pelicula_Categoria pelicula_Categoria) {

        if (pelicula_Categoria == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        pelicula_Categoria.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'pelicula_Categoria.label', default: 'Pelicula_Categoria'), pelicula_Categoria.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pelicula_Categoria.label', default: 'Pelicula_Categoria'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
