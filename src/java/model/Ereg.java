
package model;
import javax.persistence.*;
@Entity
@Table(name="ereg")
public class Ereg {
    private String employe_id , fir_num , investigation_id , evidence_type;
    
    private String description , evidence_link , collect_date , collected_by;
    
    private String evidence_condition ,evidence_status , store_location , remark;

    @Id
    @Column(name="employeeid",length = 30)
    public String getEmploye_id() {
        return employe_id;
    }

    public void setEmploye_id(String employe_id) {
        this.employe_id = employe_id;
    }

    @Column(name="firnum",length = 30)
    public String getFir_num() {
        return fir_num;
    }

    public void setFir_num(String fir_num) {
        this.fir_num = fir_num;
    }

    @Column(name="investigationid",length = 30)
    public String getInvestigation_id() {
        return investigation_id;
    }

    public void setInvestigation_id(String investigation_id) {
        this.investigation_id = investigation_id;
    }

    @Column(name="evidencetype",length = 350)
    public String getEvidence_type() {
        return evidence_type;
    }

    public void setEvidence_type(String evidence_type) {
        this.evidence_type = evidence_type;
    }

    @Column(name="description",length = 350)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name="evidencelink",length = 350)
    public String getEvidence_link() {
        return evidence_link;
    }

    public void setEvidence_link(String evidence_link) {
        this.evidence_link = evidence_link;
    }

    @Column(name="collectiondate",length = 10)
    public String getCollect_date() {
        return collect_date;
    }

    public void setCollect_date(String collect_date) {
        this.collect_date = collect_date;
    }

    @Column(name="collectedby",length = 350)
    public String getCollected_by() {
        return collected_by;
    }

    public void setCollected_by(String collected_by) {
        this.collected_by = collected_by;
    }

    @Column(name="evidencecondition",length = 350)
    public String getEvidence_condition() {
        return evidence_condition;
    }

    public void setEvidence_condition(String evidence_condition) {
        this.evidence_condition = evidence_condition;
    }

    @Column(name="evidencestatus",length = 350)
    public String getEvidence_status() {
        return evidence_status;
    }

    public void setEvidence_status(String evidence_status) {
        this.evidence_status = evidence_status;
    }

    @Column(name="storelocation",length = 350)
    public String getStore_location() {
        return store_location;
    }

    public void setStore_location(String store_location) {
        this.store_location = store_location;
    }

    @Column(name="remark",length = 3550)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
    
    
}
