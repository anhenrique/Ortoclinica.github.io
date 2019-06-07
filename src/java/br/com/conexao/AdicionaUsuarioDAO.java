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
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.ContatoModelo;


public class AdicionaUsuarioDAO extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            HttpSession session = request.getSession(true);
            try {

            String nome = request.getParameter("tNome");
            String email = request.getParameter("tEmail");
            String usuario = request.getParameter("tUsuario");
            String senha = request.getParameter("tSenha");
            String sexo = request.getParameter("tSexo");
            String nascimento = request.getParameter("tNascimento");
            String logradouro = request.getParameter("tLogradouro");
            String numero = request.getParameter("tNumero");
            String cidade = request.getParameter("tCidade");
            String estado = request.getParameter("tEstado");
            
                   
            MessageDigest algorithm = MessageDigest.getInstance("SHA-512");
            byte messageDigestSenhaAdmin[] = algorithm.digest(senha.getBytes("UTF-8"));
            StringBuilder hexStringSenhaAdmin = new StringBuilder();
            for (byte b : messageDigestSenhaAdmin) {
                hexStringSenhaAdmin.append(String.format("%02x", 0xFF & b));
            }
            senha = hexStringSenhaAdmin.toString();

            Connection con = CadastroConexao.conectar();
            String sql = "INSERT INTO cadastro (nome, email, usuario, senha, sexo, nascimento, logradouro, numero, estado, cidade) VALUES ('" +nome+"','" +email+ "','" +usuario+ "','" +senha+ "','" +sexo+ "','" +nascimento+ "','" +logradouro+ "','" +numero+ "','" +estado+ "','" +cidade+ "')";

            Statement stpessoa = con.createStatement();
            stpessoa.execute(sql);
            System.out.println("usuario adicionado");

            session.setAttribute("erro_user","0");
            response.sendRedirect("resp_cadastro.jsp");
  
      } catch (Exception e) {
            session.setAttribute("erro_user","1");
            session.setAttribute("msg_erro_user",e.getMessage());
            response.sendRedirect("resp_cadastro.jsp");
            System.out.println("nao adicionados" +e);
        }
    }
}

/*Connection con = Conexao.conectar();
            String sql = "INSERT INTO pessoa (nome_pessoa, email_pessoa, senha_pessoa) VALUES ('" + nome +"','" + email + "','" + senha + "')";
            Statement stpessoa = con.createStatement();
            stpessoa.execute(sql);*/