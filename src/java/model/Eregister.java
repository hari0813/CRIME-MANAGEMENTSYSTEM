
package model;
import javax.persistence.*;
@Entity
@Table(name="eregister")
public class Eregister {
  private String evidence_id , type_evidence , description , fir_link;
  
  private String clloction_date , status , officer , location;

   
   @Id
    @Column(name="evidenceid",length = 30)
    public String getEvidence_id() {
        return evidence_id;
    }

    public void setEvidence_id(String evidence_id) {
        this.evidence_id = evidence_id;
    }

    @Column(name="type",length = 320)
    public String getType_evidence() {
        return type_evidence;
    }

    public void setType_evidence(String type_evidence) {
        this.type_evidence = type_evidence;
    }

    @Column(name="description",length = 390)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name="link",length = 350)
    public String getFir_link() {
        return fir_link;
    }

    public void setFir_link(String fir_link) {
        this.fir_link = fir_link;
    }

    @Column(name="collect",length = 310)
    public String getClloction_date() {
        return clloction_date;
    }

    public void setClloction_date(String clloction_date) {
        this.clloction_date = clloction_date;
    }

    @Column(name="status",length = 302)
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Column(name="officer",length = 30)
    public String getOfficer() {
        return officer;
    }

    public void setOfficer(String officer) {
        this.officer = officer;
    }

    @Column(name="location",length = 390)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
  
  
}
