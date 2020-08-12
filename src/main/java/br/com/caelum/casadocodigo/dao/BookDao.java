package br.com.caelum.casadocodigo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.caelum.casadocodigo.model.Author;
import br.com.caelum.casadocodigo.model.Book;
import br.com.caelum.casadocodigo.model.Category;

@Repository
public class BookDao {

	@PersistenceContext
	private EntityManager manager;
	
	public void save(Book book) {
		manager.persist(book);
	}
	
	public List<Book> list() {
		return manager.createQuery("select a from Book a", Book.class).getResultList();
	}

	public Book findById(Long id) {
		return manager.find(Book.class, id);
	}

	public void update(Book book) {
		manager.merge(book);		
	}

	public Long count() {
		return manager.createQuery("select count(b) from Book b", Long.class).getSingleResult();
	}

	public List<Book> findByCategory(Category category) {
		Query query = manager.createQuery("select b from Book b where b.categoryTitle = :categoryTitle", Book.class);
		query.setParameter("categoryTitle", category.getTitle());
		
		return query.getResultList();
	}

	public List<Book> findByAuthor(Author author) {
		Query query = manager.createQuery("select b from Book b where b.authorName = :authorName", Book.class);
		query.setParameter("authorName", author.getName());
		
		return query.getResultList();
	}
}
