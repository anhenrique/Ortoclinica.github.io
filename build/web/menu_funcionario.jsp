<!-- essa tela tem q ser criada ainda, verificar formularios de agenda e 
de pesquisa de histórico, essa tela só é aberta no site atraves do login e senha
que é USUARIO:JOAO/SENHA:123.
Mais se quiser testar só ela aperta SHIFT+F6-->



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
       response.sendRedirect("login_funcionario.jsp");
   }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="css/estilos.css" />
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Agendamentos</title>
    </head>
    <body>
        <%@ include file="includes/menu.jsp" %>
        <div class="area_restrita">
            <nav class="menu_restrito">
                <ul>
                    
                    <button type="button" class="btn btn-primary"><a href="agendarconsulta.jsp">Agendar Exame</a></button>
                    <button type="button" class="btn btn-primary"><a href="visualizaconsulta.jsp">Visualizar consultas</a></button>
                    <button type="button" class="btn btn-primary"><a href="cadastro_medicos.jsp">Novos Medícos</a></button>
        
                </ul>
            </nav>
        </div>
        
        
        <%@ include file="includes/rodape.jsp" %>
    </body>
</html>
