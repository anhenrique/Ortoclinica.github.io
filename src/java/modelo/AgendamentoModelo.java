package modelo;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class AgendamentoModelo {

    private Integer agendamento_id;
    private String especialidade;
    private String medico;
    private int data;
    private int hora;
    

    public String getEspecialidade() {
        return especialidade;
    }

    public void setEspecialidade(String especialidade) {
        this.especialidade = especialidade;
    }

   
    

    public String getMedico() {
        return medico;
    }

    public void setMedico(String medico) {
        this.medico = medico;
    }
   

    public Integer getAgendamento_id() {
        return agendamento_id;
    }

    public void setAgendamento_id(Integer agendamento_id) {
        this.agendamento_id = agendamento_id;
    }

    public int getData() {
        return data;
    }

    public int setData(int data) {
        this.data = data; 
        return 0;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }
    
  
}
