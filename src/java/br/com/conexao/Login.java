package br.com.conexao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.MessageDigest;
import java.sql.ResultSet;

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        try {

            String usuario = request.getParameter("txt_usuario");
            String senha = request.getParameter("txt_senha");
            
            MessageDigest algorithm = MessageDigest.getInstance("SHA-512");
            byte messageDigestSenhaAdmin[] = algorithm.digest(senha.getBytes("UTF-8"));
            StringBuilder hexStringSenhaAdmin = new StringBuilder();
            for (byte b : messageDigestSenhaAdmin) {
                hexStringSenhaAdmin.append(String.format("%02x", 0xFF & b));
            }
            senha = hexStringSenhaAdmin.toString();
            
           Connection con = CadastroConexao.conectar();
            String sql = "SELECT * FROM cadastro WHERE usuario = '" + usuario + "' AND senha = '" + senha + "'";
            Statement stlogin = con.createStatement();
            ResultSet rslogin = stlogin.executeQuery(sql);
            
            if(rslogin.next()){
                session.setAttribute("nome",rslogin.getString("nome"));
                session.setAttribute("logado","true");
                session.setAttribute("erro","0");
                response.sendRedirect("menu_agendar.jsp");
            }
            else{
                session.setAttribute("logado","false");
                session.setAttribute("erro","1");
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            System.out.println("Erro ao validar usuario");
            System.out.println(e.getMessage());
        }
    }
}

