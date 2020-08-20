package br.com.caelum.casadocodigo.model;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

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

	public Integer amountOfItems() {
		return items.stream().map(existingItem -> existingItem.getAmount())
				.reduce(0, (subtotal, element) -> subtotal + element);
	}
	
	public BigDecimal totalPrice() {
		return items.stream().map(existingItem -> existingItem.getTotalPrice())
				.reduce(BigDecimal.ZERO, (subtotal, element) -> subtotal.add(element));
	}

	public CheckoutOrder toOrder() {
		Set<OrderItem> orderItems = this.items.stream().map(CartItem::toOrderItem)
				.collect(Collectors.toSet());
		
		return new CheckoutOrder(orderItems, this.totalPrice());
	}

	public void clean() {
		this.items.clear();
	}
	
	
	
}
