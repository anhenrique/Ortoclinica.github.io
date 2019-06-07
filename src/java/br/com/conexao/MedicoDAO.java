package br.com.conexao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MedicoDAO extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        try {

            String especialidade = request.getParameter("tEspecialidade");
            String crm = request.getParameter("crm");
            String nome_medico = request.getParameter("tMedico");
            String endereco = request.getParameter("endereco");
            String telefone = request.getParameter("telefone");
            String email = request.getParameter("email");
     
            Connection con = CadastroConexao.conectar();
            String sql = "INSERT INTO medico ( especialidade, crm, nome_medico,endereco, telefone, email) "
                    + "VALUES ('" + especialidade + "','" + crm + "', '" + nome_medico + "','" + endereco + "','" + telefone + "','" + email + "')";

            Statement stpessoa = con.createStatement();
            stpessoa.execute(sql);
            System.out.println("Cadastro realizado");

            session.setAttribute("erro_user", "0");
            response.sendRedirect("resp_CadastroMedico.jsp");

        } catch (Exception e) {
            session.setAttribute("erro_user", "1");
            session.setAttribute("msg_erro_user", e.getMessage());
            response.sendRedirect("resp_CadasttroMedico.jsp");
            System.out.println("cadastro NÂO realizado" + e);
        }
    }
}
