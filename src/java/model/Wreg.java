
package model;
import javax.persistence.*;
@Entity
@Table(name="wreg")
public class Wreg {
    private String witness_name , witness_id , relationship , statement;
    
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

     @Column(name="relationship",length = 320)
    public String getRelationship() {
        return relationship;
    }

    public void setRelationship(String relationship) {
        this.relationship = relationship;
    }

     @Column(name="statement",length = 320)
    public String getStatement() {
        return statement;
    }

    public void setStatement(String statement) {
        this.statement = statement;
    }

     @Column(name="contact",length = 320)
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

     @Column(name="availability",length = 230)
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

     @Column(name="victimStatement",length = 320)
    public String getVictim_statement() {
        return victim_statement;
    }

    public void setVictim_statement(String victim_statement) {
        this.victim_statement = victim_statement;
    }
    
    
    
    
}
