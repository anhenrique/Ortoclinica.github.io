
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    int i;
    String erro;
%>
<%
    if (session.getAttribute("erro") != null) {
        erro = (String) session.getAttribute("erro");
    } else {
        erro = "0";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css" />

        <title>Fale Conosco</title>
    </head>
    <body>
        <%@include file="includes/menu.jsp" %>

        <!-- a linha de baixo ainda não sei se esta certa, quando for mecher cuidado só pra não alterar o ID FORMULARIO,pra não perder as configurações do CSS-->
        <div id="formulario">
            <form  method="post" action="FaleConoscoDAO">
                <fieldset><legend>Identificação do Usuário</legend>
                    <p>Nome: <input type="text" name="cNome" id="cNome" size="30" maxlength="30" placeholder="Nome Completo"/></p>
                    <p>E-mail: <input type="email" name="cEmail" id="cEmail" size="20" maxlength="40" placeholder="Digite seu email"/></p>
                    <p> Contato: <input type="text" name="cContato" id="cCont" size="15" maxlength="15" placeholder="Deixe seu telefone"/></p>
                </fieldset>


                <fieldset><legend>Endereço do Usuário</legend>
                    <p>Logradouro: <input type="text" name="cLogradouro" id="cLogradouro" size="13" maxlength="80" placeholder="Rua, Av, Viela..."/></p>
                    <p>Número: <input type="number" name="cNumero" id="cNumero" min="1" max="9999" placeholder="Número da sua casa"/></p>
                    <p><label for="cEst">Estado:</label>
                        <select name="cEstado" id="cEstado">
                            <option>SP</option>
                            <option>RJ</option>
                            <option>MG</option>
                            <option>ES</option>   

                        </select></p>
                    <p><label for="cCid">Cidade:</label>
                        <input type="text" name="cCidade" id="cCidade" maxlength="40" size="20" placeholder="Sua cidade"/></p>
                    <datalist id="cidade">
                        <option value="São Paulo"></option>
                        <option value="Guarulhos"></option>
                        <option value="Aruja"></option>
                    </datalist>

                </fieldset>

                <fieldset id="mensagem"><legend>Mensagem do Usuario</legend>


                    <p><label for="cMsg">Mensagem:</label>
                        <textarea name="cMensagem" id="cMensagem" cols="45" rows="5" placeholder="Deixe aqui sua Mensagem"></textarea></p>
                    
                </fieldset>

                <input type="submit" value="Enviar"/>
                <input type="reset" value="Limpar"/>
            </form>
            <%
                if (erro == "1") {
            %>
            <div class="alert alert-danger">
                Usuário e/ou senha incorretos!
            </div>
            <%
                }
                if (erro == "2") {
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