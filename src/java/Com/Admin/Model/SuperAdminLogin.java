/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author roveena
 */
@Entity
public class SuperAdminLogin {
  @Id @GeneratedValue
  private long Id;
  private String Name;
  private String Email;
  private String Mobile;
  private String Username;
  private String Password;
  private long Wallate;
  private long Counter;

    public long getId() {
        return Id;
    }

    public void setId(long Id) {
        this.Id = Id;
    }

    

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getMobile() {
        return Mobile;
    }

    public void setMobile(String Mobile) {
        this.Mobile = Mobile;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public long getWallate() {
        return Wallate;
    }

    public void setWallate(long Wallate) {
        this.Wallate = Wallate;
    }

    public long getCounter() {
        return Counter;
    }

    public void setCounter(long Counter) {
        this.Counter = Counter;
    }
  
  
}
