package br.com.conexao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.AgendamentoModelo;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class AgendarConsultaDAO extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            HttpSession session = request.getSession(true);
            try {

            String especialidade = request.getParameter("tEspecialidade");
            String medico = request.getParameter("tMedico");
            String hora = request.getParameter("tHorario");
            String data = request.getParameter("tData");
    
            Connection con = CadastroConexao.conectar();
            String sql = "INSERT INTO agendamentos (especialidade, medico_agenda, data, hora) VALUES ('"+especialidade+"','"+medico+"','"+data+"','" +hora+ "')";

            Statement stpessoa = con.createStatement();
            stpessoa.execute(sql);
            System.out.println("Agendamento realizado");

            session.setAttribute("erro_user","0");
            response.sendRedirect("resp_agendamentos.jsp");
  
      } catch (Exception e) {
            session.setAttribute("erro_user","1");
            session.setAttribute("msg_erro_user",e.getMessage());
            response.sendRedirect("resp_agendamentos.jsp");
            System.out.println("agendamento NÂO realizado" +e);
        }
    }
}