package movies

class Usuario {

    String usuario;
    String id;
    String contraseña;
    String email;
    Boolean admin;
    static hasMany = [alquileres:Alquiler, criticas:Critica]

    String toString(){this.usuario}

    static constraints = {
        usuario(size: 5..15, blank: false, unique: true)
        contraseña(password:true,size: 5..15, blank: false)
        email(email: true, blank: false)
        alquileres nullable: true
        criticas nullable: true
    }
}
