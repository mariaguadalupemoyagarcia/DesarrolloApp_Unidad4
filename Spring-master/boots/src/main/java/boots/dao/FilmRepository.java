package boots.dao;

import org.springframework.data.repository.CrudRepository;

import boots.model.Film;

public interface FilmRepository extends CrudRepository<Film, Integer> {

}
