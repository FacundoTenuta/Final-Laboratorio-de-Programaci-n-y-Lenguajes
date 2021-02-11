package movies

class LoginController {

    def index() { }
    def login(){
        if(request.post){
            def usuario = Usuario.findByUsuario(params.usuario)
            if((usuario)&&(usuario.contraseña==params.contraseña)){
                session.usuario=usuario;
                redirect(controller:"principal")
            }else{
                return [error:"usuario o clave erronea",otro:"otro error"]
            }
        }
    }

    def logout (){
        session.invalidate();
        redirect(controller:"principal");
    }
}
