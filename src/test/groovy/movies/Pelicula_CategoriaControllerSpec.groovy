package movies

import grails.test.mixin.*
import spock.lang.*

@TestFor(Pelicula_CategoriaController)
@Mock(Pelicula_Categoria)
class Pelicula_CategoriaControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null

        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
        assert false, "TODO: Provide a populateValidParams() implementation for this generated test suite"
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.pelicula_CategoriaList
            model.pelicula_CategoriaCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.pelicula_Categoria!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def pelicula_Categoria = new Pelicula_Categoria()
            pelicula_Categoria.validate()
            controller.save(pelicula_Categoria)

        then:"The create view is rendered again with the correct model"
            model.pelicula_Categoria!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            pelicula_Categoria = new Pelicula_Categoria(params)

            controller.save(pelicula_Categoria)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/pelicula_Categoria/show/1'
            controller.flash.message != null
            Pelicula_Categoria.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def pelicula_Categoria = new Pelicula_Categoria(params)
            controller.show(pelicula_Categoria)

        then:"A model is populated containing the domain instance"
            model.pelicula_Categoria == pelicula_Categoria
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def pelicula_Categoria = new Pelicula_Categoria(params)
            controller.edit(pelicula_Categoria)

        then:"A model is populated containing the domain instance"
            model.pelicula_Categoria == pelicula_Categoria
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/pelicula_Categoria/index'
            flash.message != null

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def pelicula_Categoria = new Pelicula_Categoria()
            pelicula_Categoria.validate()
            controller.update(pelicula_Categoria)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.pelicula_Categoria == pelicula_Categoria

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            pelicula_Categoria = new Pelicula_Categoria(params).save(flush: true)
            controller.update(pelicula_Categoria)

        then:"A redirect is issued to the show action"
            pelicula_Categoria != null
            response.redirectedUrl == "/pelicula_Categoria/show/$pelicula_Categoria.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/pelicula_Categoria/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def pelicula_Categoria = new Pelicula_Categoria(params).save(flush: true)

        then:"It exists"
            Pelicula_Categoria.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(pelicula_Categoria)

        then:"The instance is deleted"
            Pelicula_Categoria.count() == 0
            response.redirectedUrl == '/pelicula_Categoria/index'
            flash.message != null
    }
}
