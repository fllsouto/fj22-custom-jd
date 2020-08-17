package br.com.caelum.casadocodigo.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeShopController {

	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("/shop/home");
		return mv;
	}
}
