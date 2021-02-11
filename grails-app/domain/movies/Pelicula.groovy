package movies

class Pelicula {

	String nombre
	String foto
	String descripcion
	String actores
	String director
	//Pelicula_Categoria categorias
	static hasMany = [categorias:Pelicula_Categoria, criticas:Critica, alquileres:Alquiler]
	//categorias:Categoria,

	static mapping = {
		descripcion sqlType: "text"
	}

    static constraints = {
    }

}
