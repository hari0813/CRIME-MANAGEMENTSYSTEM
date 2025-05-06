
package model;
import javax.persistence.*;
@Entity
@Table(name = "adminreg")
public class AdminReg {

    private String full_name, email, user_name, password;

    @Id
    @Column(name = "full_name", length = 80)
    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }
    @Column(name = "email", length = 90)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "user_name", length = 90)
    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    @Column(name = "password", length = 90)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}
