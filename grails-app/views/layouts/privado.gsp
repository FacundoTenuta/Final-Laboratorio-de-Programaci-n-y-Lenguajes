<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Renta Films"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>

</head>
<body>
<div class="container row">
    <div id="header">
        <g:render template="/layouts/headerPrivado"/>
    </div>

    <div id="main" class="row">
        <g:layoutBody/>
    </div>

</div>

<div id="footer" class="row" style="background-color: #524d53">
    <g:render template="/layouts/footer"/>
</div>


<asset:javascript src="application.js"/>

</body>
</html>