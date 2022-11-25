package fr.cytech.projetJava.rate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieRatesRepository extends JpaRepository<MovieRates, Long> {
    public MovieRates findByMovieRateID(int movieRateID);
    public MovieRates[] findByMovieID(int movieID);
    public MovieRates findByMovieIDAndUserID(int movieID, int userID); 
}
