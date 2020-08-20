package br.com.caelum.casadocodigo.model;

import java.math.BigDecimal;

public class CartItem {

	private Product product;
	private Integer amount;
		
	public CartItem(Product product) {
		this.product = product;
		this.amount = 1;
	}

	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	
	public BigDecimal getTotalPrice() {
		BigDecimal amount = BigDecimal.valueOf(this.amount);
		return this.product.getPrice().multiply(amount);
	}
	
	public OrderItem toOrderItem() {
		return new OrderItem(product, amount, getTotalPrice());
	}
	

	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((product == null) ? 0 : product.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartItem other = (CartItem) obj;
		if (product == null) {
			if (other.product != null)
				return false;
		} else if (!product.equals(other.product))
			return false;
		return true;
	}

	public void addOne() {
		this.amount++;
	}
}
