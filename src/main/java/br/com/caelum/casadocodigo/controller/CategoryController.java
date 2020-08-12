package br.com.caelum.casadocodigo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.caelum.casadocodigo.controller.form.CategoryForm;
import br.com.caelum.casadocodigo.dao.BookDao;
import br.com.caelum.casadocodigo.dao.CategoryDao;
import br.com.caelum.casadocodigo.model.Book;
import br.com.caelum.casadocodigo.model.Category;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private BookDao bookDao;

	@RequestMapping("/categories/form")
	public ModelAndView form() {
		ModelAndView mv = new ModelAndView("categories/form");
		return mv;
	}

	@RequestMapping("/categories")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("categories/categories");
		List<Category> categories = categoryDao.list();		
		mv.addObject("categories", categories);
		return mv;
	}
	
	@RequestMapping("/categories/{id}")
	public ModelAndView category(@PathVariable("id") Long categoryId) {
		Category category = categoryDao.findById(categoryId);
		List<Book> booksByCategory = bookDao.findByCategory(category);
		
		ModelAndView mv = new ModelAndView("categories/category");
		mv.addObject("category", category);
		mv.addObject("numberOfBooks", booksByCategory.size());
		return mv;
	}
	
	@RequestMapping("/categories/{id}/edit")
	public ModelAndView editForm(@PathVariable("id") Long categoryId) {
		Category category = categoryDao.findById(categoryId);
		ModelAndView mv = new ModelAndView("categories/edit");
		mv.addObject("category", category);
		return mv;
	}
	
	@Transactional
	@RequestMapping("/categories/update")
	public String create(Long categoryId, @Valid CategoryForm form, BindingResult result) {			
		if (result.hasErrors()) {
			return "categories/edit";
		}
		Category category = form.build();
		category.setId(categoryId);
		categoryDao.update(category);
		return "redirect:/categories";
	}
	
	
	@Transactional
	@RequestMapping("/categories/create")
	public String create(@Valid CategoryForm form, BindingResult result) {			
		if (result.hasErrors()) {
			return "categories/form";
		}
		Category category = form.build();
		categoryDao.save(category);
		return "redirect:/categories";
	}
	
	@RequestMapping("/categories/total")
	@ResponseBody
	public String total() {
		return categoryDao.count().toString();
	}
}
