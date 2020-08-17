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

import br.com.caelum.casadocodigo.controller.form.AuthorForm;
import br.com.caelum.casadocodigo.dao.AuthorDao;
import br.com.caelum.casadocodigo.dao.BookDao;
import br.com.caelum.casadocodigo.model.Author;
import br.com.caelum.casadocodigo.model.Book;

@Controller
public class AuthorAdminController {
	
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private BookDao bookDao;

	@GetMapping("/admin/authors/form")
	public ModelAndView form() {
		ModelAndView mv = new ModelAndView("/admin/authors/form");
		return mv;
	}

	@GetMapping("/admin/authors")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("/admin/authors/authors");
		List<Author> authors = authorDao.list();		
		mv.addObject("authors", authors);
		return mv;
	}
	
	@GetMapping("/admin/authors/{id}")
	public ModelAndView author(@PathVariable("id") Long authorId) {
		Author author = authorDao.findById(authorId);
		List<Book> booksByAuthor = bookDao.findByAuthor(author);
		
		ModelAndView mv = new ModelAndView("/admin/authors/author");
		mv.addObject("author", author);
		mv.addObject("numberOfBooks", booksByAuthor.size());
		return mv;
	}
	
	@GetMapping("/admin/authors/{id}/edit")
	public ModelAndView editForm(@PathVariable("id") Long authorId) {
		Author author = authorDao.findById(authorId);
		ModelAndView mv = new ModelAndView("/admin/authors/edit");
		mv.addObject("author", author);
		return mv;
	}
	
	@Transactional
	@PostMapping("/admin/authors/update")
	public ModelAndView create(Long authorId, @Valid AuthorForm form, BindingResult result) {			
		if (result.hasErrors()) {
			return editForm(authorId);
		}
		Author author = form.build();
		author.setId(authorId);
		authorDao.update(author);
		return new ModelAndView("redirect:/admin/authors");
	}
	
	
	@Transactional
	@PostMapping("/admin/authors/create")
	public ModelAndView create(@Valid AuthorForm form, BindingResult result) {			
		if (result.hasErrors()) {
			return form();
		}
		Author author = form.build();
		authorDao.save(author);
		return new ModelAndView("redirect:/admin/authors");
	}

	@GetMapping("/admin/authors/total")
	@ResponseBody
	public String total() {
		return authorDao.count().toString();
	}
}
