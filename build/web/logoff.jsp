<!CONFIGURAÇÕES DO LOGOFF/ MAIS OU MENOS ISSO, NUM SEI DIREITO-->

<%
    //Destroi as sessions
    session.setAttribute("erro","0");
    session.invalidate();
    response.sendRedirect("index.jsp");
%>