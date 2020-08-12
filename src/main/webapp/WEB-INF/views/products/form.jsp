<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<cdc:template>
    <jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Formulário de criação de Produto</h2>
	        <form  action="<c:url value='/products/create' />" method="post">
						<div class="form-group">
							<label for="bookTitle">Título do livro</label>
							<select class="form-control" name="bookId" id="bookTitle">
						
								<option <c:out value="${ empty productForm.bookId ? 'selected' : '' }" />
								disabled
								>Selecione um livro</option>
								<c:forEach var="book" items="${ books }">
									<option value="${ book.id }" <c:out value="${ productForm.bookId.equals(book.id) ? 'selected' : '' }" />
									>${ book.title }</option>
								</c:forEach>
							</select>
							<form:errors path="productForm.bookId" cssClass="alert alert-danger mt-2" element="div" />
						</div>

						<div class="form-group">
							<label for="productKind">Tipo do produto</label>
							<select class="form-control" name="kind" id="productKind">
						
								<option <c:out value="${ empty productForm.kind ? 'selected' : '' }" />
								disabled
								>Selecione o tipo do produto</option>
								<c:forEach var="kind" items="${ productKind }">
									<option value="${ kind }" />${ kind.description }</option>
								</c:forEach>
							</select>
							<form:errors path="productForm.kind" cssClass="alert alert-danger mt-2" element="div" />
						</div>
			  
  			  <div class="form-group">
					<label for="productPrice">Preço</label>
			    <input type="number" min="1" step="any" class="form-control" name="price" id="productPrice" value="${ productForm.price }" placeholder="9.99">
			  	<form:errors path="authorForm.email" cssClass="alert alert-danger mt-2" element="div"/>
			  </div>
   			  
		  	  <button type="submit" class="btn btn-primary mb-2">Salvar</button>
	  
			</form>
        </div>
    </jsp:body>
</cdc:template>
    