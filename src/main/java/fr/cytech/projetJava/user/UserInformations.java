package fr.cytech.projetJava.user;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="UsersInformations")
public class UserInformations implements Serializable {

    @Id
    private String userUsername;

    @OneToOne
    @MapsId
    @JoinColumn(name="userUsername")
    private User user;

    @Column(name="emailAddress")
    private String emailAddress;

    @Column(name="gender")
    private String gender;

    @Column(name="age")
    private int age;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

}
