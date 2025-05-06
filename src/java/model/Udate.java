
package model;

import javax.persistence.*;
@Entity
@Table(name="udate")
public class Udate {
    private String evidence_id , current_status , update_by , location;
    
    private String update_date , reason_change;

    @Id
    @Column(name="evidenceid",length = 30)
    public String getEvidence_id() {
        return evidence_id;
    }

    public void setEvidence_id(String evidence_id) {
        this.evidence_id = evidence_id;
    }

    @Column(name="currentstatus",length = 30)
    public String getCurrent_status() {
        return current_status;
    }

    public void setCurrent_status(String current_status) {
        this.current_status = current_status;
    }

    @Column(name="updateby",length = 30)
    public String getUpdate_by() {
        return update_by;
    }

    public void setUpdate_by(String update_by) {
        this.update_by = update_by;
    }

    @Column(name="location",length = 30)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Column(name="updatedata",length = 30)
    public String getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(String update_date) {
        this.update_date = update_date;
    }

    @Column(name="reason",length = 30)
    public String getReason_change() {
        return reason_change;
    }

    public void setReason_change(String reason_change) {
        this.reason_change = reason_change;
    }
    
    
}
