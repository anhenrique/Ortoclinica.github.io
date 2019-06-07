<!-- tela de cadastro-->
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
        <link rel="stylesheet" type="text/css" href="css/estilos.css" />

        <title>Cadastre-se</title>
    </head>
    <body>
            <%@include file="includes/menu.jsp" %>
            <div id="formulario">
            <form  method="post" action="AdicionaUsuarioDAO">
    <fieldset><legend>Identificação do Usuário</legend>
    <p>Nome: <input type="text" name="tNome" id="tNome" size="30" maxlength="30" placeholder="Nome Completo"/></p>
    <p>E-mail: <input type="email" name="tEmail" id="tMail" size="20" maxlength="40" placeholder="Digite seu email"/></p>
    <p>Usuario: <input type="text" name="tUsuario" id="tUsuario" size="30" maxlength="30" placeholder="Usuario"/></p>
    <p>Senha: <input type="password" name="tSenha" id="tSenha" size="8" maxlength="8" placeholder="8 digitos"/></p>
    <fieldset>Sexo:
        <br><input type="radio" value="M" name="tSexo" id="Cmasc"/><label for="cMasc">Masculino</label></br>
        <input type="radio" name="tSexo" value="F" id="CFem"/><label for="cFem">Feminino</label>
    </fieldset>
    <p>Data de Nascimento: <input type="date" name="tNascimento" id="tNascimento"/></p>
	</fieldset>

<fieldset><legend>Endereço do Usuário</legend>
    <p>Logradouro: <input type="text" name="tLogradouro" id="tLogradouro" size="13" maxlength="80" placeholder="Rua, Av, Viela..."/></p>
    <p>Número: <input type="number" name="tNumero" id="tNumero" min="" max="9999" placeholder="Número da sua casa"/></p>
    <p><label for="cEst">Estado:</label>
        <select name="tEstado" id="tEstado">
            <option value="SP">SP</option>
            <option value="RJ">RJ</option>
            <option value="MG">MG</option>
            <option value="ES">ES</option>   

  </select></p>
    <p><label for="cCid">Cidade:</label>
        <input type="text" name="tCidade" id="tCidade" maxlength="40" size="20" placeholder="Sua cidade"/>
        <datalist id="tCidade">
            <option value="São Paulo"></option>
            <option value="Guarulhos"></option>
            <option value="Aruja"></option>
        </datalist>
    </p>
	</fieldset>
                <input type="submit" value="Enviar"/>
                <input type="reset" value="Limpar"/>

	</form>
            </div>
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
          <%@include file="includes/rodape.jsp" %>

    </body>
</html>
