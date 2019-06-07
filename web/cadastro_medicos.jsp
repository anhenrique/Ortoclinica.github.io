<%-- 
    Document   : cadastro_medicos
    Created on : 24/11/2018, 01:51:17
    Author     : internet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Médico</title>
    </head>
    <body>
        
       <%@include file="includes/menu.jsp" %>
            <div id="formulario">
            <form  method="post" action="MedicoDAO">
    <fieldset><legend>Cadastro de Médicos</legend>
        
        
        <p><label for="especialidade">Especialidade</label>
        <select name="tEspecialidade" id="especialidade">
            <option value="Traumatologia">Escolha sua especialidade</option>
            <option value="Traumatologia">Traumatologia</option>
            <option value="Pediatria">Pediatria</option>
            <option value="Coluna ">Coluna </option>
            <option value="Quadril">Quadril</option> 
            <option value="Pe_Mao">Pé/Mão</option></select>
    

       
    <p>CRM: <input type="text" name="crm" id="crm" size="20" maxlength="7" placeholder="Digite seu CRM"/></p>
    <p>Nome: <input type="text" name="tMedico" id="nome_medico" size="30" maxlength="30" placeholder="Digite seu nome"/></p>
    <p>Endereço: <input type="text" name="endereco" id="endereco" size="30" maxlength="80" placeholder="digite seu endereço"/></p>
    <p>Telefone: <input type="text" name="telefone" id="telefone" size="10" maxlength="10" placeholder="digite seu telefone"/></p>
    <p>Email: <input type="email" name="email" id="email" size="20" maxlength="40" placeholder="Digite seu email"/></p>
    
    </fieldset>
             <input type="submit" value="Cadastrar"/>
                <input type="reset" value="Limpar"/>

        </form>
            </div>
                <%@include file="includes/rodape.jsp" %>
    </body>
</html>
