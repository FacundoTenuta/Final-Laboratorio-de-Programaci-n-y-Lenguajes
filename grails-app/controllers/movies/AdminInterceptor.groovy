package movies


class AdminInterceptor {

    AdminInterceptor(){
        matchAll()
                .excludes(controller: "principal")
                .excludes(controller: "pelicula", action: "show")
                .excludes(controller: "pelicula", action: "index")
                .excludes(controller: "categoria", action: "show")
                .excludes(controller: "alquiler", action: "alquilar")
                .excludes(controller: "critica", action: "opinar")
                .excludes(controller: "critica", action: "save")
                .excludes(controller: "critica", action: "existeCritica")
                .excludes(controller: "alquiler", action: "existeAlquiler")
                .excludes(controller: "alquiler", action: "save")
                .excludes(controller: "login", action: "login")
                .excludes(controller: "login", action: "logout")
    }

    boolean before() {
        if(session.usuario && !session.usuario.admin){
            redirect(controller:"principal")
            return false
        }

        true }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
