package br.com.caelum.casadocodigo.model;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;


	private String title;
	private LocalDate releaseDate;
	private Long pages;
	private String authorName;
	private String categoryTitle;
	private String coverUrl = "https://firstfreerockford.org/wp-content/uploads/2018/08/placeholder-book-cover-default.png";

	@Lob
	private String description;
    
    /**
     * @deprecated hibernate only
     */
    public Book() {
	}
    
	public Book(String title, Date releaseDate, Long pages, String authorName, String categoryTitle,
			String coverUrl, String description) {
		super();
		this.title = title;
		this.releaseDate = releaseDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		this.pages = pages;
		this.authorName = authorName;
		this.categoryTitle = categoryTitle;
		this.coverUrl = coverUrl;
		this.description = description;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public LocalDate getReleaseDate() {
		return releaseDate;
	}
	
	public Date getReleaseDateAsDate() {
		return java.sql.Date.valueOf(releaseDate);
	}

	public void setReleaseDate(LocalDate releaseDate) {
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
    
    
	
}
