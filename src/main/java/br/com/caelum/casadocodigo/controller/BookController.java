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

import br.com.caelum.casadocodigo.controller.form.BookForm;
import br.com.caelum.casadocodigo.dao.AuthorDao;
import br.com.caelum.casadocodigo.dao.BookDao;
import br.com.caelum.casadocodigo.dao.CategoryDao;
import br.com.caelum.casadocodigo.model.Author;
import br.com.caelum.casadocodigo.model.Book;
import br.com.caelum.casadocodigo.model.Category;

@Controller
public class BookController {
	
	@Autowired
	private BookDao bookDao;
	
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private CategoryDao categoryDao;

	@RequestMapping("/books/form")
	public ModelAndView form() {
		List<Category> categories = categoryDao.list();
		List<Author> authors = authorDao.list();
		
		ModelAndView mv = new ModelAndView("books/form");
		mv.addObject("authors", authors);
		mv.addObject("categories", categories);
		return mv;
	}

	@RequestMapping("/books")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("books/books");
		List<Book> books = bookDao.list();		
		mv.addObject("books", books);
		return mv;
	}
	
	@RequestMapping("/books/{id}")
	public ModelAndView book(@PathVariable("id") Long bookId) {
		Book book = bookDao.findById(bookId);
		ModelAndView mv = new ModelAndView("books/book");
		mv.addObject("book", book);
		return mv;
	}
	
	@RequestMapping("/books/{id}/edit")
	public ModelAndView editForm(@PathVariable("id") Long bookId) {
		Book book = bookDao.findById(bookId);
		List<Category> categories = categoryDao.list();
		List<Author> authors = authorDao.list();
			
		ModelAndView mv = new ModelAndView("books/edit");
		mv.addObject("authors", authors);
		mv.addObject("categories", categories);
		mv.addObject("book", book);
		return mv;
	}
	
	@Transactional
	@RequestMapping("/books/update")
	public String create(Long bookId, @Valid BookForm form, BindingResult result) {			
		if (result.hasErrors()) {
			result.getAllErrors().forEach(System.out::println);
			return "books/edit";
		}
		Book book = form.build();
		book.setId(bookId);
		bookDao.update(book);
		return "redirect:/books";
	}

	@Transactional
	@RequestMapping("/books/create")
	public String create(@Valid BookForm form, BindingResult result) {			
		if (result.hasErrors()) {
			result.getAllErrors().forEach(System.out::println);
			return "books/form";
		}
		Book book = form.build();
		bookDao.save(book);
		return "redirect:/books";
	}

	@RequestMapping("/books/total")
	@ResponseBody
	public String total() {
		return bookDao.count().toString();
	}
}
