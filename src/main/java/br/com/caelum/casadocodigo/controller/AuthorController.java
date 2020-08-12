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

import br.com.caelum.casadocodigo.controller.form.AuthorForm;
import br.com.caelum.casadocodigo.dao.AuthorDao;
import br.com.caelum.casadocodigo.dao.BookDao;
import br.com.caelum.casadocodigo.model.Author;
import br.com.caelum.casadocodigo.model.Book;

@Controller
public class AuthorController {
	
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private BookDao bookDao;

	@RequestMapping("/authors/form")
	public ModelAndView form() {
		ModelAndView mv = new ModelAndView("authors/form");
		return mv;
	}

	@RequestMapping("/authors")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("authors/authors");
		List<Author> authors = authorDao.list();		
		mv.addObject("authors", authors);
		return mv;
	}
	
	@RequestMapping("/authors/{id}")
	public ModelAndView author(@PathVariable("id") Long authorId) {
		Author author = authorDao.findById(authorId);
		List<Book> booksByAuthor = bookDao.findByAuthor(author);
		
		ModelAndView mv = new ModelAndView("authors/author");
		mv.addObject("author", author);
		mv.addObject("numberOfBooks", booksByAuthor.size());
		return mv;
	}
	
	@RequestMapping("/authors/{id}/edit")
	public ModelAndView editForm(@PathVariable("id") Long authorId) {
		Author author = authorDao.findById(authorId);
		ModelAndView mv = new ModelAndView("authors/edit");
		mv.addObject("author", author);
		return mv;
	}
	
	@Transactional
	@RequestMapping("/authors/update")
	public String create(Long authorId, @Valid AuthorForm form, BindingResult result) {			
		if (result.hasErrors()) {
			return "authors/edit";
		}
		Author author = form.build();
		author.setId(authorId);
		authorDao.update(author);
		return "redirect:/authors";
	}
	
	
	@Transactional
	@RequestMapping("/authors/create")
	public String create(@Valid AuthorForm form, BindingResult result) {			
		if (result.hasErrors()) {
			return "authors/form";
		}
		Author author = form.build();
		authorDao.save(author);
		return "redirect:/authors";
	}

	@RequestMapping("/authors/total")
	@ResponseBody
	public String total() {
		return authorDao.count().toString();
	}
}
