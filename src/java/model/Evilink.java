
package model;
import javax.persistence.*;
@Entity
@Table(name="evilink")
public class Evilink {
    private String evidence_id , type_link , link_to;
    private String description , date;

    
    @Id
    @Column(name="evidenceid",length = 300)
    public String getEvidence_id() {
        return evidence_id;
    }

    public void setEvidence_id(String evidence_id) {
        this.evidence_id = evidence_id;
    }

    @Column(name="typelink",length = 300)
    public String getType_link() {
        return type_link;
    }

    public void setType_link(String type_link) {
        this.type_link = type_link;
    }

    @Column(name="linkto",length = 300)
    public String getLink_to() {
        return link_to;
    }

    public void setLink_to(String link_to) {
        this.link_to = link_to;
    }

    @Column(name="description",length = 300)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name="date",length = 300)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    
}
