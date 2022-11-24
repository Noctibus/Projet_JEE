package fr.cytech.projetJava.rate;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

public abstract class Rate {
   
    @Column @NotNull
	private String userID;

    @Column @NotNull
	private int value;

    public String getUserID() {
        return this.userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public int getValue() {
        return this.value;
    }

    public void setValue(int value) {
        this.value = value;
    }
  
}
