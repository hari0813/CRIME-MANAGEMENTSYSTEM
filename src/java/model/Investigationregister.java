
package model;

import javax.persistence.*;
@Entity
@Table(name = "investigation")
public class Investigationregister {

    private String user_name, pass_word, full_name, email;

    private String phone_number, batch_no, police_station, rank;

    @Id
    @Column(name = "user_name", length = 280)
    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    @Column(name = "pass_word", length = 290)
    public String getPass_word() {
        return pass_word;
    }

    public void setPass_word(String pass_word) {
        this.pass_word = pass_word;
    }

    @Column(name = "full_name", length = 190)
    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    @Column(name = "email", length = 190)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "phone_number", length = 30)
    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    @Column(name = "batch_no", length = 90)
    public String getBatch_no() {
        return batch_no;
    }

    public void setBatch_no(String batch_no) {
        this.batch_no = batch_no;
    }

    @Column(name = "police_stationl", length = 190)
    public String getPolice_station() {
        return police_station;
    }

    public void setPolice_station(String police_station) {
        this.police_station = police_station;
    }

    @Column(name = "rank", length = 90)
    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }


}
