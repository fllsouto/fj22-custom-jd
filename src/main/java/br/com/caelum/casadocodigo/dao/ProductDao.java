package br.com.caelum.casadocodigo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.caelum.casadocodigo.model.Product;

@Repository
public class ProductDao {

	@PersistenceContext
	private EntityManager manager;
	
	public void save(Product product) {
		manager.persist(product);
	}
	
	public List<Product> list() {
		return manager.createQuery("select p from Product p", Product.class).getResultList();
	}

	public Product findById(Long id) {
		return manager.find(Product.class, id);
	}

	public void update(Product product) {
		manager.merge(product);		
	}

	public Long count() {
		return manager.createQuery("select count(b) from Product b", Long.class).getSingleResult();
	}

	public void remove(Long id) {
		Product product = findById(id);
		manager.remove(product);
	}
}
