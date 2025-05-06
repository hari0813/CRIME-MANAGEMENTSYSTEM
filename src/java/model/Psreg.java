
package model;
import javax.persistence.*;
@Entity
@Table(name="psreg")
public class Psreg {
    private String  witness_name , witness_id , relation_victim , statement;
    
    private String contact , availability , statement_date , victim_statement;

    @Id
    @Column(name="witnessname",length = 30)
    public String getWitness_name() {
        return witness_name;
    }

    public void setWitness_name(String witness_name) {
        this.witness_name = witness_name;
    }

     @Column(name="witnessid",length = 30)
    public String getWitness_id() {
        return witness_id;
    }

    public void setWitness_id(String witness_id) {
        this.witness_id = witness_id;
    }

     @Column(name="relationvictim",length = 30)
    public String getRelation_victim() {
        return relation_victim;
    }

    public void setRelation_victim(String relation_victim) {
        this.relation_victim = relation_victim;
    }

     @Column(name="statement",length = 30)
    public String getStatement() {
        return statement;
    }

    public void setStatement(String statement) {
        this.statement = statement;
    }

     @Column(name="contact",length = 30)
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

     @Column(name="availability",length = 30)
    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

     @Column(name="statementdate",length = 30)
    public String getStatement_date() {
        return statement_date;
    }

    public void setStatement_date(String statement_date) {
        this.statement_date = statement_date;
    }

     @Column(name="victimstatement",length = 30)
    public String getVictim_statement() {
        return victim_statement;
    }

    public void setVictim_statement(String victim_statement) {
        this.victim_statement = victim_statement;
    }
    
    
}
