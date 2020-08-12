package br.com.caelum.casadocodigo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.caelum.casadocodigo.model.Author;

@Repository
public class AuthorDao {

	@PersistenceContext
	private EntityManager manager;
	
	public void save(Author author) {
		manager.persist(author);
	}
	
	public List<Author> list() {
		return manager.createQuery("select a from Author a", Author.class).getResultList();
	}

	public Author findById(Long id) {
		return manager.find(Author.class, id);
	}

	public void update(Author author) {
		manager.merge(author);		
	}

	public Long count() {
		return manager.createQuery("select count(a) from Author a", Long.class).getSingleResult();
	}
}
