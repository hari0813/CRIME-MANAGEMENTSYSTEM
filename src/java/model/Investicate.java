
package model;

import javax.persistence.*;

@Entity
@Table(name = "investicate")
public class Investicate {

    private String invest_id, fir_num, invest_off, invest_status;

    private String invest_notes, evedince, date;

    @Id
    @Column(name = "invest_id", length = 130)
    public String getInvest_id() {
        return invest_id;
    }

    public void setInvest_id(String invest_id) {
        this.invest_id = invest_id;
    }

    @Column(name = "firnum", length = 310)
    public String getFir_num() {
        return fir_num;
    }

    public void setFir_num(String fir_num) {
        this.fir_num = fir_num;
    }

    @Column(name = "investoff", length = 350)
    public String getInvest_off() {
        return invest_off;
    }

    public void setInvest_off(String invest_off) {
        this.invest_off = invest_off;
    }

    @Column(name = "investstatus", length = 350)
    public String getInvest_status() {
        return invest_status;
    }

    public void setInvest_status(String invest_status) {
        this.invest_status = invest_status;
    }

    @Column(name = "investnotes", length = 350)
    public String getInvest_notes() {
        return invest_notes;
    }

    public void setInvest_notes(String invest_notes) {
        this.invest_notes = invest_notes;
    }

    @Column(name = "evedince", length = 950)
    public String getEvedince() {
        return evedince;
    }

    public void setEvedince(String evedince) {
        this.evedince = evedince;
    }

    @Column(name = "date", length = 30)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
