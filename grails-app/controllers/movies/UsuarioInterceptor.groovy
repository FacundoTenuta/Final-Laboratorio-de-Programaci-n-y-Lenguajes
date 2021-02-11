package movies


class UsuarioInterceptor {

    UsuarioInterceptor() {
        matchAll()
                .excludes(controller: "principal")
                .excludes(controller: "pelicula", action: "show")
                .excludes(controller: "pelicula", action: "index")
                .excludes(controller: "categoria", action: "show")
                .excludes(controller: "critica", action: "existeCritica")
                .excludes(controller: "alquiler", action: "existeAlquiler")
                .excludes(controller: "login", action: "login")
                .excludes(controller: "login", action: "logout")
    }

    boolean before() {
        if(!session.usuario){
            redirect(controller:"login",action:"login")
            return false
        }

        true }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
