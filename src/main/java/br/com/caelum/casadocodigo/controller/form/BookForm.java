package br.com.caelum.casadocodigo.controller.form;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Positive;

import org.springframework.format.annotation.DateTimeFormat;

import br.com.caelum.casadocodigo.dao.AuthorDao;
import br.com.caelum.casadocodigo.dao.CategoryDao;
import br.com.caelum.casadocodigo.model.Author;
import br.com.caelum.casadocodigo.model.Book;
import br.com.caelum.casadocodigo.model.Category;

public class BookForm {
	
	@NotBlank(message = "O título não pode ficar em branco")
	private String title;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@PastOrPresent(message = "A data de lançamento deve ser anterior ou igual ao dia de hoje")
	private Date releaseDate;
	
	@Positive(message = "O número de páginas deve ser positivo")
	private Long pages;
	
	@NotNull(message = "O autor selecionado é inválido")
	private Long authorId;
	
	@NotNull(message = "A categoria selecionada é inválido")
	private Long categoryId;
	private String coverUrl;
	private String description;

	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}



	public Date getReleaseDate() {
		return releaseDate;
	}
	
//	public Date getReleaseDateAsDate() {
//		return java.sql.Date.valueOf(releaseDate);
//	}


	public void setReleaseDate(Date releaseDate) {
//		this.releaseDate = (releaseDate == null ? releaseDate : this.releaseDate);
		this.releaseDate = releaseDate;
	}

	public Long getPages() {
		return pages;
	}

	public void setPages(Long pages) {
		this.pages = pages;
	}


	public Long getAuthorId() {
		return authorId;
	}


	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}


	public Long getCategoryId() {
		return categoryId;
	}


	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}


	public String getCoverUrl() {
		return coverUrl;
	}



	public void setCoverUrl(String coverUrl) {
		this.coverUrl = coverUrl;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public Book build(AuthorDao authorDao, CategoryDao categoryDao) {
		Author author = authorDao.findById(this.authorId);
		Category category = categoryDao.findById(this.categoryId);;
		return new Book(title, releaseDate, pages, author, category, coverUrl, description);
	}

}
