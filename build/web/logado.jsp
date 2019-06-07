<!-- CONFIGURAÇÕES DO LOGIN-->



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
   int i;
   String logado,erro;
%>
<%
 if ((session.getAttribute("logado")!= null) && (session.getAttribute("logado") == "true")){
       logado =(String) session.getAttribute("logado");
       erro = "0";
       
   }
   else{
       logado = "false";
       session.setAttribute("erro", "2");
       response.sendRedirect("login.jsp");
   }
%>
<!doctype html>
<html>
    <head>
        <title>titulo</title>
        <meta charset="UTF-8" />
        <link rel="stylesheet" type="text/css" href="css/estilos.css" />
    </head>
    <body>
        
                <%@include file="includes/menu.jsp" %>
                <div class="login">
                    Logado
                </div>
            
            <%@include file="includes/rodape.jsp" %>
        
    </body>
</html>