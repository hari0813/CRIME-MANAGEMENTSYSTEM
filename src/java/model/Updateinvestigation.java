
package model;

import javax.persistence.*;
@Entity
@Table(name = "updateinvestigation")
public class Updateinvestigation {

    private String case_number, fir_id, invest_off;

    private String invest_status, remarks;

    @Id
    @Column(name = "casenumber", length = 230)
    public String getCase_number() {
        return case_number;
    }

    public void setCase_number(String case_number) {
        this.case_number = case_number;
    }

    @Column(name = "firid", length = 310)
    public String getFir_id() {
        return fir_id;
    }

    public void setFir_id(String fir_id) {
        this.fir_id = fir_id;
    }

    @Column(name = "investoff", length = 410)
    public String getInvest_off() {
        return invest_off;
    }

    public void setInvest_off(String invest_off) {
        this.invest_off = invest_off;
    }

    @Column(name = "investstatus", length = 110)
    public String getInvest_status() {
        return invest_status;
    }

    public void setInvest_status(String invest_status) {
        this.invest_status = invest_status;
    }

    @Column(name = "remarks", length = 1010)
    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }


}
