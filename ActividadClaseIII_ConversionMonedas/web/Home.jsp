
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //Recibe estos 3 valores para asignarlos como valor predeterminado en los input.
    //Cada vez que se le de convertir va a refrescar la pagina con los valores anteriores...
    //...porvenientes de Logica de conversion.jsp...
    //...para simular que se guarda la consulta hecha con todo y resultado.
    double resultadoConversion = Double.parseDouble(request.getParameter("resultadoConversion"));
    String tipo = request.getParameter("tipo");
    int colones = Integer.parseInt(request.getParameter("colones"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Estilo personalizado para cambiar los colores -->
        <style>
            /* Cambiar el fondo de la cabecera a gris claro */
            .bg-custom {
                background-color: #6c757d; /* Gris claro */
            }

            /* Cambiar el color del texto en la cabecera a blanco */
            .text-custom-header {
                color: #ffffff; /* Blanco */
            }

            /* Cambiar el color del texto en otras secciones a negro */
            .text-custom {
                color: #000000; /* Negro */
            }

            /* Cambiar el color del botón a gris */
            .btn-custom {
                background-color: #6c757d;
                color: #ffffff;
            }

            .btn-custom:hover {
                background-color: #5a6368;
            }
        </style>
    </head>
    <body>
        <!-- Cabecera con fondo gris y texto blanco -->
        <div class="p-5 bg-custom text-custom-header text-center">
            <h1>Coin</h1>
            <p>Simulador de conversión de monedas</p> 
        </div>

        <!-- Barra de navegación -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container-fluid">
                <ul class="navbar-nav">
                </ul>
            </div>
        </nav>

        <div class="container mt-5">

            <form action="LogicaConversion.jsp">
                <div class="mb-3">
                    <label for="colones" class="form-label text-custom"><b>Cantidad en Colones (₡)</b></label>
                    <input type="number" class="form-control" name="colones" value=<%=colones%> required>
                </div>

                <div class="mb-3">
                    <label for="currency" class="form-label text-custom"><b>Moneda de Conversión</b></label>

                    <select class="form-select" name="tipoCambio" required>
                        <option value="usd">Dólar (USD)</option>
                        <option value="eur">Euro (EUR)</option>
                    </select>
                </div>

                <div class="text-center">
                    <!-- Botón con fondo gris -->
                    <button type="submit" class="btn btn-custom" id="convert-btn"><b>Convertir</b></button>
                </div>
            </form>

            <div class="mb-3 text-center mt-4">
                <h2 class="text-custom"><b>Resultado</b></h2>
                <input type="text" class="form-control w-50 mx-auto" id="result" 
                       placeholder="<%=resultadoConversion + " " + tipo%>" readonly>
            </div>
        </div>

    </body>
</html>