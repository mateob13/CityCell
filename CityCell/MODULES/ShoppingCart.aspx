<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="CityCell.MODULES.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Carrito</title>
    <%--<link rel="stylesheet" href="../resources/style/normalize.css">--%>
    <link rel="stylesheet" href="../resources/style/skeleton.css">
    <link rel="stylesheet" href="../resources/style/custom.css">

    <style>
        .Btn01 {
            background-color: #FF5335 !important;
            border: 2px solid White !important;
            border-radius: 5px !important;
            font-size: 19px;
            color: #FFFFFF;
            height: 60px !important;
            width: 150px !important;
            padding: 15px 25px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <header id="header" class="header">
        <div class="container">
            <div class="row">
                <div class="four columns">
                    
                </div>
                <div class="two columns u-pull-right">
                    <ul>
                        <li class="submenu">
                            <img src="../resources/images/cart.png" id="img-carrito">
                            <div id="carrito">

                                <table id="lista-carrito" class="u-full-width">
                                    <thead>
                                        <tr>
                                            <th>Imagen</th>
                                            <th>Nombre</th>
                                            <th>Precio</th>
                                            <th>Cantidad</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>

                                <a href="#" id="vaciar-carrito" class="button u-full-width">Vaciar Carrito</a>
                                
                            </div>
                        </li>
                    </ul>
                </div>
                <div>
                    <a href="../LOGIN/Login.aspx" id="CerrarSesion" class="Btn01">Cerrar sesion</a>
                    
                </div>
                
            </div>
        </div>
    </header>



    

    <div id="lista-cursos" class="container">
        <h1 id="encabezado" class="encabezado">Compra en línea</h1>
        <div class="row">
            <div class="four columns">
                <div class="card">
                    <img src="../resources/images/celulares.png" class="imagen-curso u-full-width">
                    <div class="info-card">
                        <h4 id="NameProd1">Celulares iPhone 13</h4>
                        <p id="Reference1">iPhone 13</p>
                        <img src="../resources/images/estrellas.png">
                        <span class="u-pull-right " id="PriceProd1">$4000000</span>
                        <a href="#" class="u-full-width button-primary button input agregar-carrito" data-id="1">Agregar Al Carrito</a>
                    </div>
                </div> 
            </div>
            <div class="four columns">
                <div class="card">
                    <img src="../resources/images/fundas.png" class="imagen-curso u-full-width">
                    <div class="info-card">
                        <h4 id="NameProd2">Estuche para cualquier referencia</h4>
                        <p id="Reference2">Estuches</p>
                        <img src="../resources/images/estrellas.png">
                        <span class="u-pull-right " id="PriceProd2">$50000</span>
                        <a href="#" class="u-full-width button-primary button input agregar-carrito" data-id="2">Agregar Al Carrito</a>
                    </div>
                </div>
            </div>
            <div class="four columns">
                <div class="card">
                    <img src="../resources/images/audifonos.png" class="imagen-curso u-full-width">
                    <div class="info-card">
                        <h4 id="NameProd3">Audifonos inalambricos JBL</h4>
                        <p id="Reference3">Auriculares</p>
                        <img src="../resources/images/estrellas.png">
                        <span class="u-pull-right " id="PriceProd3">$300000</span>
                        <a href="#" class="u-full-width button-primary button input agregar-carrito" data-id="3">Agregar Al Carrito</a>
                    </div>
                </div> 
            </div>

        </div>
        
    </div>


    <script src="../resources/scripts/app.js"></script>

</body>
</html>