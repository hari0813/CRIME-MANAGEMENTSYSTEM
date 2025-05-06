
package model;

import javax.persistence.*;
@Entity
@Table(name="vreg")
public class Vreg {
    private String victim_id , name , email , age;
    
    private String gender , contact , addresss , occupation;
    
    private String  crime_type , date , statement;

    @Id
    @Column(name="victimid",length = 30)
    public String getVictim_id() {
        return victim_id;
    }

    public void setVictim_id(String victim_id) {
        this.victim_id = victim_id;
    }
 
    @Column(name="name",length = 30)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

     @Column(name="email",length = 30)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

     @Column(name="age",length = 30)
    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

     @Column(name="gender",length = 30)
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

     @Column(name="contact",length = 30)
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

     @Column(name="address",length = 30)
    public String getAddresss() {
        return addresss;
    }

    public void setAddresss(String addresss) {
        this.addresss = addresss;
    }

     @Column(name="occupation",length = 30)
    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

     @Column(name="crimetype",length = 30)
    public String getCrime_type() {
        return crime_type;
    }

    public void setCrime_type(String crime_type) {
        this.crime_type = crime_type;
    }

     @Column(name="date",length = 30)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Column(name="statement",length = 30)
    public String getStatement() {
        return statement;
    }

    public void setStatement(String statement) {
        this.statement = statement;
    }
    
    
}
