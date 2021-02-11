<!doctype html>
<html>
<head>
    <g:render template="/layouts/meta"/>
    <title>Renta Films</title>

    <style>
        #main{
            padding: 0%;
            padding-top: 2%;
            margin: 0%;
        }
        li {list-style-type: none}
        body{
            background-color: #1c1c1c;
        }
    </style>
</head>
<body>
<div class="container">
    <g:render template="/layouts/categorias_contenedor"/>

    <div class="col-lg-8" style="margin-left: 12%">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active" style="background-size: cover">
                    <img src="http://comicsen8mm.com/wp-content/uploads/2012/03/Av-Banner-10-sp.jpg" class="img-responsive" alt="the avengers" style="width: 100%; max-height: 50vh">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item" style="background-size: cover">
                    <img src="https://www.larevistadiaria.com/wp-content/uploads/2018/03/affiche.Pacific-Rim-Uprising-AFICHE.jpg" class="img-responsive" alt="pacific rim" style="width: 100%; max-height: 50vh">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item" style="background-size: cover">
                    <img src="https://i1.wp.com/asdecopas.cl/wp-content/uploads/2014/11/interstellar.jpg?fit=960%2C540" class="img-responsive" alt="interestellar" style="width: 100%; max-height: 50vh">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                ...
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

</div>
<div id="peliculas">
    <g:render template="/layouts/peliculas" collection="${peliculas}"/>
</div>


</body>
</html>
