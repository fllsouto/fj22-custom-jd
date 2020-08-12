<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<cdc:template>
	<jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Formulário de Criação de Livros</h2>
	        <form  action="<c:url value='/books/create' />" method="post">
			  <div class="form-group">
			    <label for="bookTitle">Titulo</label>
			    <input type="text" class="form-control" name="title" id="bookTitle"
						placeholder="Algoritmos em Java" value="${ bookForm.title }">
			  	<form:errors path="bookForm.title" cssClass="alert alert-danger mt-2" element="div"/>
				
			  </div>
  			  <div class="form-group">
			    <label for="bookReleaseDate">Data de lançamento</label>
			    <input type="date" class="form-control" name="releaseDate" id="bookReleaseDate"
						value="<fmt:formatDate value='${ bookForm.releaseDate }' pattern='yyyy-MM-dd' />"
				>
			  	<form:errors path="bookForm.releaseDate" cssClass="alert alert-danger mt-2" element="div"/>
			  	
			  </div>
   			  <div class="form-group">
				 <label for="bookPages">Quantidade de páginas</label>
				 <input type="number" class="form-control" name="pages" id="bookPages"
							placeholder="156" value="${ bookForm.pages }">
			  	<form:errors path="bookForm.pages" cssClass="alert alert-danger mt-2" element="div"/>
			  </div>
			  <div class="form-group">
				<label for="bookAuthorName">Autor</label>
				<select class="form-control" name="authorName" id="bookAuthorName">
				  
				  <option  
				  	<c:out value="${ empty bookForm.authorName ? 'selected' : '' }" />
				  	disabled
				  >Selecione um autor</option>
				  <c:forEach var="author" items="${ authors }">
				  	<option
				  		value="${ author.name }"
				  		<c:out value="${ bookForm.authorName.equals(author.name) ? 'selected' : '' }" />
				  	>${ author.name }</option>
				  </c:forEach>
				</select>
			  	<form:errors path="bookForm.authorName" cssClass="alert alert-danger mt-2" element="div"/>
			   </div>
			   <div class="form-group">
			   <label for="bookCategoryTitle">Categoria</label>
   			   <select class="form-control" name="categoryTitle" id="bookCategoryTitle">
				  <option  
				  	<c:out value="${ empty bookForm.categoryTitle ? 'selected' : '' }" />
				  	disabled
				  >Selecione uma categoria</option>
				  <c:forEach var="category" items="${ categories }">
				  	<option
				  		<c:out value="${ bookForm.categoryTitle.equals(category.title) ? 'selected' : '' }" />
				  	>${ category.title }</option>
				  </c:forEach>
				</select>
			  	<form:errors path="bookForm.categoryTitle" cssClass="alert alert-danger mt-2" element="div"/>
			 </div>
   			  <div class="form-group">
			    <label for="bookCoverUrl">Capa url</label>
			    <input type="text" class="form-control" name="coverUrl" id="bookCoverUrl"
						placeholder="https://cdn.shopify.com/s/files/1/0155/7645/products/eBook-Algoritmos_large.jpg?v=1484936519"
						value="${ bookForm.coverUrl }">
			  	<form:errors path="bookForm.coverUrl" cssClass="alert alert-danger mt-2" element="div"/>
			  </div>
			  <div class="form-group">
			    <label for="bookDescription">Descrição</label>
			    <textarea class="form-control" name="description" id="bookDescription" rows="3"
						placeholder="Em nosso dia a dia, realizamos uma série de buscas e ordenações que nos são tão naturais que nem percebemos como sua presença é ubíqua e facilita nossa vida...."
					>${ bookForm.description }</textarea>
			  	<form:errors path="bookForm.description" cssClass="alert alert-danger mt-2" element="div"/>
			  </div>
		  	  <button type="submit" class="btn btn-primary mb-2">Salvar</button>
	  
			</form>
        </div>
    </jsp:body>
</cdc:template>


