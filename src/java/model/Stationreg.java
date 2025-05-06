
package model;

import javax.persistence.*;

@Entity
@Table(name = "stationreg")

public class Stationreg {

    private String police_id, police_name, email, contact;

    private String address, date;

    @Id
    @Column(name = "policeid", length = 90)
    public String getPolice_id() {
        return police_id;
    }

    public void setPolice_id(String police_id) {
        this.police_id = police_id;
    }

    @Column(name = "policename", length = 600)
    public String getPolice_name() {
        return police_name;
    }

    public void setPolice_name(String police_name) {
        this.police_name = police_name;
    }

    @Column(name = "email", length = 90)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "contact", length = 30)
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Column(name = "address", length = 900)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name = "date", length = 30)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
