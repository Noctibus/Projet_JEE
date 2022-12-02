package fr.cytech.projetJava.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {


    @Autowired
    MovieRepository movieRepository;


    //NO NEED TO CREATE

    //READ
    public List<Movie> getAllMovies() {
        return movieRepository.findAll();
    }

    //UPDATE
    public void editMovieRate(Movie movie,double newRate) {
        movie.setRate(newRate);
        movieRepository.save(movie);
    }

    //NO NEED TO DELETE

    
}