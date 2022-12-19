package fr.cytech.projetJava.rate;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.cytech.projetJava.movie.Movie;
import fr.cytech.projetJava.movie.MovieService;
import fr.cytech.projetJava.user.User;

@Service
public class MovieRatesService {

    @Autowired
    MovieService movieService;

    @Autowired
    MovieRatesRepository movieRatesRepository;

    // Calculates rate average of a movie
    public void setMovieRateAvg(Movie movie){
        List<MovieRates> tab = movieRatesRepository.findByMovie(movie);
        int n = tab.size();
        double movieAvg = 0;
        // si il n'y a pas de notes on retourne 3 (la moyenne entre 1 et 5)
        if(n == 0){
            movieAvg = 3;
        } else {
            for (MovieRates r: tab){
                movieAvg += r.getValue();
            }
            movieAvg = movieAvg/n;
        }
        movieService.editMovieRate(movie,movieAvg);
    }

    // Create or Read
    public void addMovieRate(User user, Movie movie, int value){
        MovieRates mr = movieRatesRepository.findByMovieAndUser(movie, user);
        MovieRates rate = new MovieRates();
        // Si l'utilisateur n'a pas deja note ce film, on ajoutes les nouvelles informations dans la table
        if (Objects.isNull(mr)){
            rate.setValue(value);
            rate.setMovie(movie);
            rate.setUser(user);
            movieRatesRepository.save(rate);
        // sinon on remplace sa note
        } else {
            mr.setValue(value);
            movieRatesRepository.save(mr);  
        }
        setMovieRateAvg(movie);
    }

    // Read
    public MovieRates getMovieRateByMovieAndUser(Movie movie, User user){
        return movieRatesRepository.findByMovieAndUser(movie, user);
    }

    public List<MovieRates> getMovieRatesByUserOrderByMovie(User user) {
        return movieRatesRepository.findByUserOrderByMovie(user);
    }

    // Delete
    public void deleteMovieRate(MovieRates movieRate){
        movieRatesRepository.delete(movieRate);
         // on récupère le personnage noté et on met à jour sa note moyenne
         Movie movie = movieRate.getMovie();
         setMovieRateAvg(movie);
    }
}
