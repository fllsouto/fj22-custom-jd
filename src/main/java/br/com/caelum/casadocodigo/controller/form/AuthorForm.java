package br.com.caelum.casadocodigo.controller.form;

import javax.validation.constraints.NotBlank;

import br.com.caelum.casadocodigo.model.Author;

public class AuthorForm {
    
	@NotBlank(message = "O nome não pode ficar em branco")
	private String name;
	
	@NotBlank(message = "O email não pode ficar em branco")
    private String email;
    private String avatarUrl;
    private String description;
	
    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAvatarUrl() {
		return avatarUrl;
	}
	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Author build() {
		return new Author(this.name, this.email, this.avatarUrl, this.description);
	}
}
