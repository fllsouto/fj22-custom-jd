package br.com.caelum.casadocodigo.controller.form;

import java.math.BigDecimal;

import br.com.caelum.casadocodigo.dao.BookDao;
import br.com.caelum.casadocodigo.model.Book;
import br.com.caelum.casadocodigo.model.Product;
import br.com.caelum.casadocodigo.model.ProductKind;

public class ProductForm {
	
	private Long bookId;
	
	private BigDecimal price;
	
	private ProductKind kind;

	public Long getBookId() {
		return bookId;
	}

	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public ProductKind getKind() {
		return kind;
	}

	public void setKind(ProductKind kind) {
		this.kind = kind;
	}
	
	public Product build(BookDao bookDao) {
		Book book = bookDao.findById(this.bookId);
		return new Product(book , this.price, this.kind);
	}

}
