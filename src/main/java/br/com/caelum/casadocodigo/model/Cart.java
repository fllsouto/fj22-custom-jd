package br.com.caelum.casadocodigo.model;

import java.util.HashSet;
import java.util.Set;

import javax.enterprise.context.SessionScoped;

import org.springframework.stereotype.Component;

@Component
@SessionScoped
public class Cart {
	
	private Set<CartItem> items = new HashSet<CartItem>();

	public void add(Product product) {
		CartItem item = new CartItem(product);
		
		if (items.contains(item)) {
			items.stream().filter(existingItem -> existingItem.equals(item)).forEach(CartItem::addOne);
		} else {
			items.add(item);			
		}
	}
	
	public int cartSize() {
		return items.size();
	}

	public Set<CartItem> getItems() {
		return items;
	}

	public void remove(Product product) {
		items.remove(new CartItem(product));
	}
	
	
	
}
