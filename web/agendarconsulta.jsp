<%@page import="modelo.AgendamentoModelo"%>
<%
    AgendamentoModelo agendamento = new AgendamentoModelo();
     agendamento.setEspecialidade(request.getParameter("especialidade"));
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendamento</title>
    </head>
    <body>
        
             <%@include file="includes/menu.jsp" %>
             
        <h1>Agendamento</h1>
        
                  <form  method="post"  action="AgendarConsultaDAO" >
   
       

<fieldset>
    <p><label for="cEsp">Especialidade</label>
        <select name="tEspecialidade" id="tEspecialidade">
            <option value="Traumatologia">Traumatologia</option>
            <option value="Pediatria">Pediatria</option>
            <option value="Coluna ">Coluna </option>
            <option value="Quadril">Quadril</option> 
            <option value="Pe_Mao">Pé/Mão</option></select>
            
            
    <p><label for="cMed">Médicos</label>        
        <select name="tMedico" id="tMedico">
            <option value="DrGerson">Dr. Gerson de Andrede Souza - CRM 47122 </option>
            <option value="DrJoao">Dr. João Eduardo Santos Pato - CRM 57195</option>
            <option value="DrFabio">Dr. Fábio de Assunção e Silva - CRM 124720</option>
            <option value="DrAdalberto">Dr. Adalberto Bortoletto - CRM 41737</option> 
            <option value="DraThais">Dra. THAIS DE PAULA BUCHAIM – CRM 128.971</option>
            <option value="DrAndre">Dr. André Elias Junqueira - CRM 150.430</option>
            <option value="DrDanilo">DR. DANILO RYUKO CANDIDO NISHIKAWA – CRM 135.960</option>
            <option value="DrFabio">DR. FABIO WATANABE – CRM 91.599</option>
            <option value="DrFernando">DR. FERNANDO AIRES DUARTE – CRM 134.870</option>
            <option value="DrMiguel">DR. MIGUEL ANTONIO DOS SANTOS – CRM 37.417</option>
            <option value="DrThiago">DR. THIAGO BITTENCOURT CARVALHO ROSA CRM: 150.938</option>
            <option value="DrVictor">DR. VICTOR CHAMMAS – CRM 134.318</option>
            <option value="DrWellington">DR. WELLINGTON FARIA MOLINA – CRM 83.790</option>
            <option value="DrFernando">DR. FERNANDO AIRES DUARTE – CRM 134.873</option></select>
            
            
            
    <p><label for="cHorario">Horário</label>           
     <select name="tHorario" id="tHorario" type="time">
        <option value="1">	08:00	</option>
        <option value="2">	08:30	</option>
        <option value="3">	09:00	</option>
        <option value="4">	09:30	</option>
        <option value="5">	10:00	</option>
        <option value="6">	10:30	</option>
        <option value="7">	11:00	</option>
        <option value="8">	11:30	</option>
        <option value="9">	12:00	</option>
        <option value="10">	12:30	</option>
        <option value="11">	13:00	</option>
        <option value="12">	13:30	</option>
        <option value="13">	14:00	</option>
        <option value="14">	14:30	</option>
        <option value="15">	15:00	</option>
        <option value="16">	15:30	</option>
        <option value="17">	16:00	</option>
        <option value="18">	16:30	</option>
        <option value="19">	17:00	</option>
     </select>
            
    <p>Data: <input type="date" name="tData" id="tData" min="2018-11-29"/></p>
       <input type="submit" value="Agendar"/>
                <input type="reset" value="Limpar"/>
    
    
	
</fieldset>        
                      
            </form>
          <%@include file="includes/rodape.jsp" %>
    </body>
</html>
