<%@page import="java.util.ArrayList"%>
<%@page import="br.com.conexao.VisualizarDAO"%>
<%@page import="modelo.AgendamentoModelo"%>
<%@page import="java.util.List"%>
<%@page import="br.com.conexao.AgendarConsultaDAO"%>
<%
    VisualizarDAO dao1 = new VisualizarDAO();
    ArrayList<AgendamentoModelo> ListaAgendamentos = dao1.ListarAgendamentos();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css" />
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="includes/menu.jsp" %>
        <h1>Minhas consultas</h1>
        
                        <table id="tabela" border="1" align="center" style="width: 60%">
                            
                                <tr>
                                <th >Protocolo</th>
                                <th >Especialidade</th>
                                <th> Médico</th>
                                <th> Data</th>
                                <th>Hora</th>
                                
                                </tr>
                                
                                <%
                                    for(AgendamentoModelo registro: ListaAgendamentos)
                                    {
                             
                                %>
                                <tr>  
                                    <td><%= registro.getAgendamento_id() %></td>
                                    <td><%= registro.getEspecialidade() %></td>
                                    <td><%= registro.getMedico() %></td>
                                    <td><%= registro.getData() %></td>
                                    <td><%= registro.getHora() %></td>
                                    <td><a href="#"> Editar</a><a href="excluirAgendamento.jsp?agendamento_id=<%= registro.getAgendamento_id() %>">Excluir</a></td>
                                </tr>
                                <% 
                                    }
                                %>
                        </table>
        
        <%@include file="includes/rodape.jsp" %>
    </body>
</html>
