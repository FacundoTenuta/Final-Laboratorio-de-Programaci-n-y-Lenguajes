package movies

class PrincipalController {

    def index() {
        [categorias:Categoria.findAll(), peliculas:Pelicula.findAll()]
    }

    def busqueda(String pelicula) {
        [pelicula: Pelicula.findByNombre(pelicula)]
    }
}
