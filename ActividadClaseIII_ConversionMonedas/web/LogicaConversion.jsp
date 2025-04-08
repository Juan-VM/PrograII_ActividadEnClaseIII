<%
    //Valores para los tipos de cambio
    double valorDolar = 520;
    double valorEuro = 560;

    //Respuesta del form
    int colones = Integer.parseInt(request.getParameter("colones"));
    String tipoCambio = request.getParameter("tipoCambio");

    double resultadoConversion = 0;

    //Conversion de monedas
    if (tipoCambio.equals("usd")) {
        resultadoConversion = (colones / valorDolar);
    }
    if (tipoCambio.equals("eur")) {
        resultadoConversion = (colones / valorEuro);
    }

    //Vuelve a Home.jsp con el resultado y con los valores consultados, para simular que se guardo la informacion solicitada.
    RequestDispatcher rd = request.getRequestDispatcher("Home.jsp?resultadoConversion="+resultadoConversion+"&tipo="+tipoCambio+"&colones="+colones);
    rd.forward(request, response);
%>
