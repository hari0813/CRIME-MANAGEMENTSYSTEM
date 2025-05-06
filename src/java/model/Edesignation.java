
package model;
import javax.persistence.*;
@Entity
@Table(name="edesignation")
public class Edesignation {
    private String employe_id , police_station , designation;
    
    private String assignment_date , remark;

    @Id
    @Column(name="employeid",length = 30)
    public String getEmploye_id() {
        return employe_id;
    }

    public void setEmploye_id(String employe_id) {
        this.employe_id = employe_id;
    }

    @Column(name="policestation",length = 30)
    public String getPolice_station() {
        return police_station;
    }

    public void setPolice_station(String police_station) {
        this.police_station = police_station;
    }

    @Column(name="designation",length = 30)
    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    @Column(name="assignmentdate",length = 30)
    public String getAssignment_date() {
        return assignment_date;
    }

    public void setAssignment_date(String assignment_date) {
        this.assignment_date = assignment_date;
    }

    @Column(name="remark",length = 30)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
    
    
}
