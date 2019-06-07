package br.com.conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.AgendamentoModelo;

public class VisualizarDAO {

    public ArrayList<AgendamentoModelo> ListarAgendamentos() {
        ArrayList<AgendamentoModelo> ListaAgendamentos = new ArrayList<AgendamentoModelo>();
        try {
            String sql = "select * from agendamentos";
            Connection con = CadastroConexao.conectar();
            Statement stAgendamentos = con.createStatement();
            ResultSet rsAgendamentos = stAgendamentos.executeQuery(sql);
            while (rsAgendamentos.next()) {
                AgendamentoModelo agendamentos = new AgendamentoModelo();
                 
                
                agendamentos.setAgendamento_id(rsAgendamentos.getInt("agendamento_id"));
                agendamentos.setEspecialidade(rsAgendamentos.getString("especialidade"));
                agendamentos.setMedico(rsAgendamentos.getString("medico_agenda"));
                agendamentos.setData(rsAgendamentos.getInt("data"));
                agendamentos.setHora(rsAgendamentos.getInt("hora"));

                ListaAgendamentos.add(agendamentos);
                System.out.println("sucesso");

            }
            rsAgendamentos.close();
            con.close();
            
        } catch (Exception e) {
            System.out.println("Erro ao listar agendamentos");
            System.out.println(e.getMessage());
        }
        return ListaAgendamentos;
    }
    
    public boolean atualizar(AgendamentoModelo agendamento)
    {
        String sql = "UPDATE agendamentos set  especialidade=?, medico_agenda=?, data=?, hora=? where agendamento_id=?" ;
        Boolean retorno = false;
        PreparedStatement pst = CadastroConexao.getPreparedStatement(sql);
        
        try {
            pst.setString(1, agendamento.getEspecialidade());
            pst.setString(2, agendamento.getMedico());
            pst.setInt(3, agendamento.getData());
            pst.setInt(4, agendamento.getHora());
            pst.setInt(5, agendamento.getAgendamento_id());

            if(pst.executeUpdate()>0)
                System.out.println("Cadastrado com sucesso");
            {
                retorno = true;
                
            }

        } catch (SQLException ex) {
            Logger.getLogger(VisualizarDAO.class.getName()).log(Level.SEVERE,null,ex);
            retorno = false;
            System.out.println("Fez merda, tenta de novo");
        
        }
        return retorno;
    
    }


    public boolean excluir(AgendamentoModelo agendamento)
    {
        String sql = "DELETE FROM agendamentos where agendamento_id=?";
        Boolean retorno = false;
        PreparedStatement pst = CadastroConexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, agendamento.getAgendamento_id());
         
            if(pst.executeUpdate()>0)
            {
                retorno = true;
                
            }

        } catch (SQLException ex) {
            Logger.getLogger(VisualizarDAO.class.getName()).log(Level.SEVERE,null,ex);
            retorno = false;
                        System.out.println("Fez merda, tenta de novo" +ex);

        
        }
        return retorno;
    
    }
}