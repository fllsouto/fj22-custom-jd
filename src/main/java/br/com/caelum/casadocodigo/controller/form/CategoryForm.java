package br.com.caelum.casadocodigo.controller.form;

import javax.validation.constraints.NotBlank;

import br.com.caelum.casadocodigo.model.Category;

public class CategoryForm {
	
	@NotBlank(message = "O título não pode ficar em branco")
	private String title;
	private String description;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Category build() {
		return new Category(title, description);
	}
}
