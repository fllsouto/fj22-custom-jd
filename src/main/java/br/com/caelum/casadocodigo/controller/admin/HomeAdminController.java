package br.com.caelum.casadocodigo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeAdminController {

	@GetMapping(path = { "/admin", "/admin/" })
	public ModelAndView execute() {
		return new ModelAndView("/admin/home");
	}

}