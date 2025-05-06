
package model;

import javax.persistence.*;
@Entity
@Table(name="vicreg")
public class Victreg {
    private String evidence_id , type_evidene , description , link_fir;
    
    private String date ,  status , officer , location;

    
    @Id
    @Column(name="evidenceid",length = 30)
    public String getEvidence_id() {
        return evidence_id;
    }

    public void setEvidence_id(String evidence_id) {
        this.evidence_id = evidence_id;
    }

     @Column(name="type",length = 100)
    public String getType_evidene() {
        return type_evidene;
    }

    public void setType_evidene(String type_evidene) {
        this.type_evidene = type_evidene;
    }

     @Column(name="description",length = 500)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

     @Column(name="link",length = 100)
    public String getLink_fir() {
        return link_fir;
    }

    public void setLink_fir(String link_fir) {
        this.link_fir = link_fir;
    }

     @Column(name="date",length = 30)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

     @Column(name="status",length = 300)
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

     @Column(name="officer",length = 300)
    public String getOfficer() {
        return officer;
    }

    public void setOfficer(String officer) {
        this.officer = officer;
    }

     @Column(name="location",length = 300)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
    
}
