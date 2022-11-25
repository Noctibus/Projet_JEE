package fr.cytech.projetJava.movie;

import java.util.List;

public interface MovieDao{
    List<Movie> listMovies();
    Movie findByid(int id);
    void delete(int id);
} /*entity manager*/