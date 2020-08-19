package br.com.caelum.casadocodigo.controller.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.caelum.casadocodigo.dao.ProductDao;
import br.com.caelum.casadocodigo.model.Cart;
import br.com.caelum.casadocodigo.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private Cart cart;
	
	@GetMapping("/")
	public ModelAndView home() {
		
		System.out.println("Tamanho do carrinho: " + cart.cartSize());
		
		ModelAndView mv = new ModelAndView("/shop/home");
		
		List<Product> lastProducts = productDao.lastProducts();
		
		mv.addObject("products", productDao.list());
		mv.addObject("lastProducts", lastProducts);
		return mv;
	}

	@GetMapping("/products/{id}")
	public ModelAndView product(@PathVariable("id") Long productId) {
		ModelAndView mv = new ModelAndView("/shop/product");
		mv.addObject("product", productDao.findById(productId));
		return mv;
	}

	@GetMapping("/products/cart")
	public ModelAndView cart() {
		
		ModelAndView mv = new ModelAndView("/shop/cart");
		mv.addObject("cart", cart);
		return mv;
	}

	@PostMapping("/products/checkout")
	public ModelAndView checkout() {
		return new ModelAndView("redirect:/");
	}

	@PostMapping("/products/update-cart")
	public ModelAndView update() {
		return new ModelAndView("redirect:/");
	}
	
	@PostMapping("/products/cart/add")
	public ModelAndView addToCart(Long productId) {
		Product product = productDao.findById(productId);
		cart.add(product);
		
		System.out.println("Id do produto: " + productId);
		return new ModelAndView("redirect:/");
	}
}
