
package model;

import javax.persistence.*;

@Entity
@Table(name = "crimereg")

public class Crimereg {

    private String crime_code, crime_name, crime_type, crime_desc;

    @Id
    @Column(name = "crimecode", length = 130)
    public String getCrime_code() {
        return crime_code;
    }

    public void setCrime_code(String crime_code) {
        this.crime_code = crime_code;
    }

    @Column(name = "crimename", length = 1330)
    public String getCrime_name() {
        return crime_name;
    }

    public void setCrime_name(String crime_name) {
        this.crime_name = crime_name;
    }

    @Column(name = "crimetype", length = 230)
    public String getCrime_type() {
        return crime_type;
    }

    public void setCrime_type(String crime_type) {
        this.crime_type = crime_type;
    }

    @Column(name = "crimedesc", length = 1930)
    public String getCrime_desc() {
        return crime_desc;
    }

    public void setCrime_desc(String crime_desc) {
        this.crime_desc = crime_desc;
    }

}
