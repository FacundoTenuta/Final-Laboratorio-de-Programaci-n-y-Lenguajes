package movies

class Categoria {

	String nombre
    static hasMany = [peliculas:Pelicula_Categoria]
    //static belongsTo = Pelicula
    //Pelicula_Categoria peliculas
    String toString(){this.nombre}

    static constraints = {

    }


}
