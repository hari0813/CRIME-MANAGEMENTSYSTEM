
package model;
import javax.persistence.*;
@Entity
@Table(name="firreg")
public class Firreg {
    
    private String firnum, victimname, crimecategory, crimenature;
    
    private String officer , description , date , place;
    
    private String witnesses;

    @Id
    @Column(name="firnum",length = 30)
    public String getFirnum() {
        return firnum;
    }

    public void setFirnum(String firnum) {
        this.firnum = firnum;
    }

    @Column(name="victiname",length = 30)
    public String getVictimname() {
        return victimname;
    }

    public void setVictimname(String victimname) {
        this.victimname = victimname;
    }

    @Column(name="crimecategory",length = 30)
    public String getCrimecategory() {
        return crimecategory;
    }

    public void setCrimecategory(String crimecategory) {
        this.crimecategory = crimecategory;
    }

    @Column(name="nature",length = 30)
    public String getCrimenature() {
        return crimenature;
    }

    public void setCrimenature(String crimenature) {
        this.crimenature = crimenature;
    }

    @Column(name="officer",length = 30)
    public String getOfficer() {
        return officer;
    }

    public void setOfficer(String officer) {
        this.officer = officer;
    }

    @Column(name="description",length = 30)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name="date",length = 30)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Column(name="place",length = 30)
    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    @Column(name="witnesses",length = 30)
    public String getWitnesses() {
        return witnesses;
    }

    public void setWitnesses(String witnesses) {
        this.witnesses = witnesses;
    }
    
    
}
