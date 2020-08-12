<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<cdc:template>
	<jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Formulário de Edição de Livros</h2>
	        <form  action="<c:url value='/books/update' />" method="post">
        	  <input type="hidden" name="bookId" value="${ book.id }">
			  <div class="form-group">
			    <label for="bookTitle">Título</label>
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
				<label for="bookAuthorName">Autor</label>
				<select class="form-control" name="authorName" id="bookAuthorName">
				  
				  <option  
				  	<c:out value="${ empty book.authorName ? 'selected' : '' }" />
				  	disabled
				  >Selecione um autor</option>
				  <c:forEach var="author" items="${ authors }">
				  	<option
				  		value="${ author.name }"
				  		<c:out value="${ book.authorName.equals(author.name) ? 'selected' : '' }" />
				  	>${ author.name }</option>
				  </c:forEach>
				</select>
			   </div>
			   <div class="form-group">
			   <label for="bookCategoryTitle">Categoria</label>
   			   <select class="form-control" name="categoryTitle" id="bookCategoryTitle">
				  <option  
				  	<c:out value="${ empty book.categoryTitle ? 'selected' : '' }" />
				  	disabled
				  >Selecione uma categoria</option>
				  <c:forEach var="category" items="${ categories }">
				  	<option
				  		<c:out value="${ book.categoryTitle.equals(category.title) ? 'selected' : '' }" />
				  	>${ category.title }</option>
				  </c:forEach>
				</select>
			   
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
						placeholder="Em nosso dia a dia, realizamos uma sï¿½rie de buscas e ordenaï¿½ï¿½es que nos sï¿½o tï¿½o naturais que nem percebemos como sua presenï¿½a ï¿½ ubï¿½qua e facilita nossa vida...."
					>${ book.description }</textarea>
			  </div>
		  	  <button type="submit" class="btn btn-primary mb-2">Salvar</button>
			</form>
        </div>
    </jsp:body>
</cdc:template>
