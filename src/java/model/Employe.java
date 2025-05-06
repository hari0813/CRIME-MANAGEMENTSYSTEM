
package model;
import javax.persistence.*;
@Entity
@Table(name="employe")
public class Employe {
    private String employe_id , employe_name , gender , dob;
    
    private String contact , email , address , join_date;
    
    private String police_station , position , emergenccy_contact;

    
    @Id
    @Column(name="employeid",length = 130)
    public String getEmploye_id() {
        return employe_id;
    }

    public void setEmploye_id(String employe_id) {
        this.employe_id = employe_id;
    }

    @Column(name="employename",length = 130)
    public String getEmploye_name() {
        return employe_name;
    }

    public void setEmploye_name(String employe_name) {
        this.employe_name = employe_name;
    }

    @Column(name="gender",length = 130)
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Column(name="dob",length = 10)
    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    @Column(name="contact",length = 130)
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Column(name="email",length = 30)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name="address",length = 530)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name="joindate",length = 10)
    public String getJoin_date() {
        return join_date;
    }

    public void setJoin_date(String join_date) {
        this.join_date = join_date;
    }

    @Column(name="policestation",length = 130)
    public String getPolice_station() {
        return police_station;
    }

    public void setPolice_station(String police_station) {
        this.police_station = police_station;
    }

    @Column(name="position",length = 130)
    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Column(name="emergencycontact",length = 130)
    public String getEmergenccy_contact() {
        return emergenccy_contact;
    }

    public void setEmergenccy_contact(String emergenccy_contact) {
        this.emergenccy_contact = emergenccy_contact;
    }
    
    
}
