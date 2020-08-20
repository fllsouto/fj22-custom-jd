package br.com.caelum.casadocodigo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.caelum.casadocodigo.model.CheckoutOrder;

@Repository
public class CheckoutOrderDao {

	@PersistenceContext
	private EntityManager manager;
	
	public void save(CheckoutOrder order) {
		manager.persist(order);
	}
	
	public List<CheckoutOrder> list() {
		return manager.createQuery("select ch from CheckoutOrder ch", CheckoutOrder.class).getResultList();
	}
}
