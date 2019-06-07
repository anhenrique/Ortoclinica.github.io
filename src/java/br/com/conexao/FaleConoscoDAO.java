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


public class FaleConoscoDAO extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            HttpSession session = request.getSession(true);
            try {

            String nome = request.getParameter("cNome");
            String email = request.getParameter("cEmail");
            String contato = request.getParameter("cContato");
            String logradouro = request.getParameter("cLogradouro");
            String numero = request.getParameter("cNumero");
            String estado = request.getParameter("cEstado");
            String cidade = request.getParameter("cCidade");
            String mensagem = request.getParameter("cMensagem");
            
            
                  

            Connection con = CadastroConexao.conectar();
            String sql = "INSERT INTO fale_conosco (nome, email, contato, logradouro, numero, estado, cidade, mensagem) VALUES ('" +nome+"','" +email+ "','" +contato+ "','" +logradouro+ "','" +numero+ "','" +estado+ "','" +cidade+ "','" +mensagem+ "')";

            Statement stpessoa = con.createStatement();
            stpessoa.execute(sql);
            System.out.println("Mensagem enviada com sucesso");

            session.setAttribute("erro_user","0");
            response.sendRedirect("resp_FaleConosco.jsp");
  
      } catch (Exception e) {
            session.setAttribute("erro_user","1");
            session.setAttribute("msg_erro_user",e.getMessage());
            response.sendRedirect("resp_Fale_Conosco.jsp");
            System.out.println("Mensagem não enviada" +e);
        }
    }
}
