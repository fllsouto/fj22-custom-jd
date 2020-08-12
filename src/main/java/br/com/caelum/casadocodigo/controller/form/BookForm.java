package br.com.caelum.casadocodigo.controller.form;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Positive;

import org.springframework.format.annotation.DateTimeFormat;

import br.com.caelum.casadocodigo.model.Book;

public class BookForm {
	
	@NotBlank(message = "O título não pode ficar em branco")
	private String title;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@PastOrPresent(message = "A data de lançamento deve ser anterior ou igual ao dia de hoje")
	private Date releaseDate;
	
	@Positive(message = "O número de páginas deve ser positivo")
	private Long pages;
	
	@NotBlank(message = "O nome do autor não pode ficar em branco")
	private String authorName;
	
	@NotBlank(message = "O título da categoria não pode ficar em branco")
	private String categoryTitle;
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



	public String getAuthorName() {
		return authorName;
	}



	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}



	public String getCategoryTitle() {
		return categoryTitle;
	}



	public void setCategoryTitle(String categoryTitle) {
		this.categoryTitle = categoryTitle;
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



	public Book build() {
		return new Book(title, releaseDate, pages, authorName, categoryTitle, coverUrl, description);
	}

}
