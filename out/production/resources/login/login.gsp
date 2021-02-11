<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="publico" />
    <title>Bienvenido</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Bienvenido ingrese!</h3>
                </div>
                <div class="panel-body">
                    <g:form  controller="login" action="login" accept-charset="UTF-8" role="form">
                        ${error}<br>
                        ${otro}
                        <fieldset>
                            <div class="form-group">
                                <g:textField name="usuario" class="form-control" placeholder="nombre de usuario" require="true" />
                            </div>
                            <div class="form-group">
                                <g:field class="form-control" placeholder="Password" name="contraseña" type="password" value="" require="true"/>
                            </div>

                            <g:submitButton  name="submit"
                                             class="btn btn-lg btn-success btn-block"  value="Login"/>
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>