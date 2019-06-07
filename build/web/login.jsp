<!-- TELA DE LOGIN-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
   int i;
   String erro;
 %>
<%
 if (session.getAttribute("erro")!= null){
       erro =(String) session.getAttribute("erro");
   }
   else{
       erro="0";
   }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        
            <%@include file="includes/menu.jsp" %>
        
                 <div class="login" >
                    <!--form method="post" action="validar.jsp"-->
                    <form method="post" action="Login">
                        
                        
                       
                        <label for="txt_usuario">Usuário:</label>
                        <input type="text" name="txt_usuario" id="txt_usuario" required placeholder="Usuário" maxlength="50" size="50"/><br/>                      
                        <label for="txt_senha">Senha:</label>
                        <input type="password" name="txt_senha" id="txt_senha" required placeholder="Senha" maxlength="14" size="50"/><br/>
                        
                        <br/><input type="submit" value="Enviar"/>
                    </form>
                    <%
                        if(erro=="1"){
                    %>
                            <div class="alert alert-danger">
                                Usuário e/ou senha incorretos!
                            </div>
                    <%
                        }
                        if(erro=="2"){
                    %>
                            <div class="alert alert-danger">
                                Página restrita efetue login
                            </div>
                    <%
                        }
                    %>
                </div>
            
            <%@include file="includes/rodape.jsp" %>
    </body>
</html>
