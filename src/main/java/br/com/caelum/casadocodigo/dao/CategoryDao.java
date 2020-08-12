package br.com.caelum.casadocodigo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.caelum.casadocodigo.model.Category;

@Repository
public class CategoryDao {
  
	@PersistenceContext
  private EntityManager manager;
	
	public void save(Category category) {
		manager.persist(category);
	}
	
	public List<Category> list() {
		return manager.createQuery("select a from Category a", Category.class).getResultList();
	}

	public Category findById(Long id) {
		return manager.find(Category.class, id);
	}

	public void update(Category category) {
		manager.merge(category);		
	}

	public Long count() {
		return manager.createQuery("select count(c) from Category c", Long.class).getSingleResult();
	}
}
