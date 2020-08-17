package br.com.caelum.casadocodigo.controller.admin;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.caelum.casadocodigo.controller.form.ProductForm;
import br.com.caelum.casadocodigo.dao.BookDao;
import br.com.caelum.casadocodigo.dao.ProductDao;
import br.com.caelum.casadocodigo.model.Book;
import br.com.caelum.casadocodigo.model.Product;
import br.com.caelum.casadocodigo.model.ProductKind;

@Controller
public class ProductAdminController {
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private BookDao bookDao;

	@GetMapping("/admin/products/form")
	public ModelAndView form() {
		List<Book> books = bookDao.list();
		ModelAndView mv = new ModelAndView("/admin/products/form");
		mv.addObject("books", books);
		mv.addObject("productKind", ProductKind.values());
		return mv;
	}

	@GetMapping("/admin/products")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("/admin/products/products");
		List<Product> products = productDao.list();		
		mv.addObject("products", products);
		return mv;
	}
	
	@GetMapping("/admin/products/{id}")
	public ModelAndView product(@PathVariable("id") Long productId) {
		Product product = productDao.findById(productId);
		
		ModelAndView mv = new ModelAndView("/admin/products/product");
		mv.addObject("product", product);
		return mv;
	}
	
	@Transactional
	@GetMapping("/admin/products/{id}/remove")
	public ModelAndView create(@PathVariable("id") Long productId) {			
		productDao.remove(productId);
		return new ModelAndView("redirect:/admin/products");
	}
	
	
	@Transactional
	@PostMapping("/admin/products/create")
	public ModelAndView create(@Valid ProductForm form, BindingResult result) {			
		if (result.hasErrors()) {
			return form();
		}
		Product product = form.build(bookDao);
		productDao.save(product);
		return new ModelAndView("redirect:/admin/products");
	}

	@GetMapping("/admin/products/total")
	@ResponseBody
	public String total() {
		return productDao.count().toString();
	}
}
