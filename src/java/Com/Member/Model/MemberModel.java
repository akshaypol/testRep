/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Member.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author roveena
 */
@Entity
public class MemberModel {

    @Id
    @GeneratedValue
    private long Id;

    private String SponcerID;
    private String Username;
    private String Name;
    private String Email;
    private String MObNO;
    private String Age;
    private String Gender;
    private String Occupation;
    private String PanNum;
    private String Aadhaar;
    private String Mcharch;
    private String City;
    private String Password;
    private String Admin;
    private String RDate;
    private String AdharFront;
    private String AdharBack;
    private String PanCardIMG;
    private String Baptismcertificate;
    private boolean status;

    public long getId() {
        return Id;
    }

    public void setId(long Id) {
        this.Id = Id;
    }

    public String getSponcerID() {
        return SponcerID;
    }

    public void setSponcerID(String SponcerID) {
        this.SponcerID = SponcerID;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
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

    public String getMObNO() {
        return MObNO;
    }

    public void setMObNO(String MObNO) {
        this.MObNO = MObNO;
    }

    public String getAge() {
        return Age;
    }

    public void setAge(String Age) {
        this.Age = Age;
    }

    public String getGender() {
        return Gender;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

   

   

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getOccupation() {
        return Occupation;
    }

    public String getAdmin() {
        return Admin;
    }

    public void setAdmin(String Admin) {
        this.Admin = Admin;
    }

    public String getRDate() {
        return RDate;
    }

    public void setRDate(String RDate) {
        this.RDate = RDate;
    }

    public void setOccupation(String Occupation) {
        this.Occupation = Occupation;
    }

    public String getPanNum() {
        return PanNum;
    }

    public void setPanNum(String PanNum) {
        this.PanNum = PanNum;
    }

    public String getAadhaar() {
        return Aadhaar;
    }

    public void setAadhaar(String Aadhaar) {
        this.Aadhaar = Aadhaar;
    }

    public String getMcharch() {
        return Mcharch;
    }

    public void setMcharch(String Mcharch) {
        this.Mcharch = Mcharch;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getAdharFront() {
        return AdharFront;
    }

    public void setAdharFront(String AdharFront) {
        this.AdharFront = AdharFront;
    }

    public String getAdharBack() {
        return AdharBack;
    }

    public void setAdharBack(String AdharBack) {
        this.AdharBack = AdharBack;
    }

    public String getPanCardIMG() {
        return PanCardIMG;
    }

    public void setPanCardIMG(String PanCardIMG) {
        this.PanCardIMG = PanCardIMG;
    }

    public String getBaptismcertificate() {
        return Baptismcertificate;
    }

    public void setBaptismcertificate(String Baptismcertificate) {
        this.Baptismcertificate = Baptismcertificate;
    }
    
    
    

              

}
