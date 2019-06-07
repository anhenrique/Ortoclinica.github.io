<!-- VALIDAÇÃO DA TELA DE LOGIN-->

<%
    String usuario;
    String senha;
    
    usuario = request.getParameter("txt_usuario");
    senha = request.getParameter("txt_senha");
    
    // Criar objeto para obter sessão do JSP:
    session = request.getSession(true); 
    
    if((usuario.equals("joao")) && senha.equals("123")){
        //criando uma sessao chamado logado
        session.setAttribute("logado","true");
        session.setAttribute("erro","0");
        response.sendRedirect("menu_funcionario.jsp");
    }
    else{
        //criando uma sessao chamado logado
        session.setAttribute("erro","1");
        session.setAttribute("logado","false");
        response.sendRedirect("login_funcionario.jsp");
    }
%>
