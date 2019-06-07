<%@page import="modelo.AgendamentoModelo"%>
<%@page import="br.com.conexao.VisualizarDAO"%>

<%
    String msg;
    if(request.getParameter("agendamento_id")==null)
    {
        msg = "Item não enviado, erro";
    }
    else{
VisualizarDAO dao = new VisualizarDAO();
AgendamentoModelo agendamento = new AgendamentoModelo();
agendamento.setAgendamento_id(Integer.parseInt(request.getParameter("agendamento_id")));
Boolean ret = dao.excluir(agendamento);
if(ret == true)
{msg = "Registro cadastrado com sucesso";
    }
else
{
    msg = "Não foi possivel realizar a exclusão";
}
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=msg%></h1>
    </body>
</html>
