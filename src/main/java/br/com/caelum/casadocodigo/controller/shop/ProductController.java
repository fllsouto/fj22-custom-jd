package br.com.caelum.casadocodigo.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

	@GetMapping("/products/{id}")
	public ModelAndView product(@PathVariable("id") Long productId) {
		return new ModelAndView("//shop/product");
	}
}
