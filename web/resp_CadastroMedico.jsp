<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
   int i;
   String erro;
 %>
<%
 if (session.getAttribute("erro_user")!= null){
       erro =(String) session.getAttribute("erro_user");
   }
   else{
       erro="0";
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
        <div id="wrapper">
            <%@include file="includes/menu.jsp" %>
            <div class="content">
                <div class="conteudo">
                    <h1>Envio de mensagens</h1>

                    <%
                        if(erro=="0"){
                    %>
                            <div class="alert alert-success">
                                Médico cadastrado com Sucesso!!!
                            </div>
                    <%
                        }
                        if(erro=="1"){
                    %>
                            <div class="alert alert-danger">
                                Erro ao enviar mensagem, <a href="javascript:history.go(-1)">Tente Novamente</a><br/>
                                Erro: <%= session.getAttribute("msg_erro_user") %>
                            </div>
                    <%
                        }
                    %>
                </div>
            </div>
            <%@include file="includes/rodape.jsp" %>
        </div>
    </body>
</html>