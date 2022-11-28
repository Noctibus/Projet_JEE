package fr.cytech.projetJava.rate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.movie.Movie;

@Repository
public interface MovieRatesRepository extends JpaRepository<MovieRates, Integer> {
    public MovieRates findByMovieRateID(int movieRateID);
    public MovieRates[] findByMovie(Movie movie);
    public MovieRates findByMovieAndUser(Movie movie, User user); 
}
