
package model;
import javax.persistence.*;
@Entity
@Table(name="chargesheet")
public class Chargesheet {
    private String sheet_id , fir_num , accused_name , crime_charge;
    
    private String evidence_link , filling_date , investigation_officer, court_date;
    
    private String witnesses;

    @Id
    @Column(name="sheetid",length = 30)
    public String getSheet_id() {
        return sheet_id;
    }

    public void setSheet_id(String sheet_id) {
        this.sheet_id = sheet_id;
    }

    @Column(name="firnum",length = 30)
    public String getFir_num() {
        return fir_num;
    }

    public void setFir_num(String fir_num) {
        this.fir_num = fir_num;
    }
@Column(name="sccusedname",length = 30)
    public String getAccused_name() {
        return accused_name;
    }

    public void setAccused_name(String accused_name) {
        this.accused_name = accused_name;
    }

    @Column(name="crimecharge",length = 30)
    public String getCrime_charge() {
        return crime_charge;
    }

    public void setCrime_charge(String crime_charge) {
        this.crime_charge = crime_charge;
    }

    @Column(name="evidencelink",length = 30)
    public String getEvidence_link() {
        return evidence_link;
    }

    public void setEvidence_link(String evidence_link) {
        this.evidence_link = evidence_link;
    }

    @Column(name="fillingdate",length = 30)
    public String getFilling_date() {
        return filling_date;
    }

    public void setFilling_date(String filling_date) {
        this.filling_date = filling_date;
    }

    @Column(name="officer",length = 30)
    public String getInvestigation_officer() {
        return investigation_officer;
    }

    public void setInvestigation_officer(String investigation_officer) {
        this.investigation_officer = investigation_officer;
    }

    @Column(name="courtdate",length = 30)
    public String getCourt_date() {
        return court_date;
    }

    public void setCourt_date(String court_date) {
        this.court_date = court_date;
    }

    @Column(name="witnesses",length = 30)
    public String getWitnesses() {
        return witnesses;
    }

    public void setWitnesses(String witnesses) {
        this.witnesses = witnesses;
    }
    
    
}
