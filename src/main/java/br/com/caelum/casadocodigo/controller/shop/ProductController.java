package br.com.caelum.casadocodigo.controller.shop;

import java.math.RoundingMode;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.caelum.casadocodigo.dao.CheckoutOrderDao;
import br.com.caelum.casadocodigo.dao.ProductDao;
import br.com.caelum.casadocodigo.model.Cart;
import br.com.caelum.casadocodigo.model.CheckoutOrder;
import br.com.caelum.casadocodigo.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CheckoutOrderDao checkoutDao;
	
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
	@Transactional
	public ModelAndView checkout() {
		CheckoutOrder order = cart.toOrder();
		checkoutDao.save(order);
		cart.clean();
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
		return new ModelAndView("redirect:/");
	}
	
	@PostMapping("/products/cart/remove/{id}")
	public ModelAndView removeFromCart(@PathVariable("id") Long productId) {
		Product product = productDao.findById(productId);
		cart.remove(product);
		return new ModelAndView("redirect:/products/cart");
	}
	
	@GetMapping("/products/cart/amount")
	@ResponseBody
	public String amountOfItems() {
		return cart.amountOfItems().toString();
	}
	
	@GetMapping("/products/cart/total")
	@ResponseBody
	public String totalPrice() {
		return String.format("R$: %s", cart.totalPrice().setScale(2, RoundingMode.HALF_UP).toString());
	}
}
