package fr.cytech.projetJava.movie;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {


    @Autowired
    MovieRepository movieRepository;


    //CREATE
    public void addMovie(String title,Date releaseDate,String director,String synopsis,String pictureAddress) {
        Movie newMovie=new Movie();
        newMovie.setTitle(title);
        newMovie.setDate(releaseDate);
        newMovie.setDirector(director);
        newMovie.setSynopsis(synopsis);
        newMovie.setRate(3);
        newMovie.setPictureAddress(pictureAddress);
        movieRepository.save(newMovie);
    }

    //READ
    public Movie getById(int id) {
        return movieRepository.findById(id);
    }

    public List<Movie> getAllMovies() {
        return movieRepository.findAll();
    }

    //UPDATE
    public void editMovieRate(Movie movie,double newRate) {
        movie.setRate(newRate);
        movieRepository.save(movie);
    }

    //DELETE
    public void deleteMovie(Movie movie) {
        movieRepository.delete(movie);
    }

    
}
