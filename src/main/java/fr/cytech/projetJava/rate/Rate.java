package fr.cytech.projetJava.rate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

@Entity
public abstract class Rate {
   
    @Column @NotNull
	private String userId;

    @Column @NotNull
	private int value;

    public static double rateAvg(Rate[] tab){
        return 0;
    }
}
