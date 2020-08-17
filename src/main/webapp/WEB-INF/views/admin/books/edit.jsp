<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<cdc:adminTemplate>
	<jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Formulário de Edição de Livros</h2>
			<form  action="<c:url value='/admin/books/update' />" method="post">
        	  <input type="hidden" name="bookId" value="${ book.id }">
			  <div class="form-group">
			    <label for="bookTitle">Titulo</label>
			    <input type="text" class="form-control" name="title" id="bookTitle"
						placeholder="Algoritmos em Java" value="${ book.title }">
			  </div>
  			  <div class="form-group">
			    <label for="bookReleaseDate">Data de lançamento</label>
			    <input type="date" class="form-control" name="releaseDate" id="bookReleaseDate"
						value="<fmt:formatDate value='${ book.releaseDateAsDate }' pattern='yyyy-MM-dd' />"
				>
			  </div>
   			  <div class="form-group">
				 <label for="bookPages">Quantidade de páginas</label>
				 <input type="number" class="form-control" name="pages" id="bookPages"
							placeholder="156" value="${ book.pages }">
			  </div>

			  <div class="form-group">
				<label for="bookAuthorId">Autor</label>
				<select class="form-control" name="authorId" id="bookAuthorId">
				  
				  <option
							<c:out value="${ empty bookForm.authorId ? 'selected' : '' }" />
							disabled>Selecione um autor</option>
				  <c:forEach var="author" items="${ authors }">
				  	<option value="${ author.id }"
								<c:out value="${ bookForm.authorId.equals(author.id) ? 'selected' : '' }" />>${ author.name }</option>
				  </c:forEach>
				</select>
			  	<form:errors path="bookForm.authorId"
						cssClass="alert alert-danger mt-2" element="div" />
			   </div>

			   <div class="form-group">
				   <label for="bookCategoryId">Categoria</label>
	   			   <select class="form-control" name="categoryId"
						id="bookCategoryId">
				  <option
							<c:out value="${ empty bookForm.categoryId ? 'selected' : '' }" />
							disabled>Selecione uma categoria</option>
				  <c:forEach var="category" items="${ categories }">
				  	<option	value="${ category.id }"
								<c:out value="${ bookForm.categoryId.equals(category.id) ? 'selected' : '' }" />>${ category.title }</option>
				  </c:forEach>
				</select>
			  	<form:errors path="bookForm.categoryId"
						cssClass="alert alert-danger mt-2" element="div" />
			 </div>
			 
   			  <div class="form-group">
			    <label for="bookCoverUrl">Capa url</label>
			    <input type="text" class="form-control" name="coverUrl" id="bookCoverUrl"
						placeholder="https://cdn.shopify.com/s/files/1/0155/7645/products/eBook-Algoritmos_large.jpg?v=1484936519"
						value="${ book.coverUrl }">
			  </div>
			  <div class="form-group">
			    <label for="bookDescription">Descrição</label>
			    <textarea class="form-control" name="description" id="bookDescription" rows="3"
						placeholder="Em nosso dia a dia, realizamos uma série de buscas e ordenações que nos são tão naturais que nem percebemos como sua presença é ubíqua e facilita nossa vida..."
					>${ book.description }</textarea>
			  </div>
		  	  <button type="submit" class="btn btn-primary mb-2">Salvar</button>
			</form>
        </div>
    </jsp:body>
</cdc:adminTemplate>
