<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<cdc:template>
    <jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Formulário de Criação de Categorias</h2>
	        <form  action="<c:url value='/categories/create' />" method="post">
	        
			  <div class="form-group">
			    <label for="categoryTitle">Título</label>
			    <input type="text" class="form-control" name="title" id="categoryTitle" 
			    	placeholder="Front-end" value="${ category.title }">
   			  	<form:errors path="categoryForm.title" cssClass="alert alert-danger mt-2" element="div"/>
			  </div>
			  
			  <div class="form-group">
			    <label for="categoryDescription">Descrição</label>
			    <textarea class="form-control" name="description" id="categoryDescription" rows="3" 
			    	placeholder="Aprenda a desenvolver sites utilizando as técnologias mais atuais como HTML5, CSS3 e Javascript..."
			    >${ category.description }</textarea>
			  	<form:errors path="categoryForm.description" cssClass="alert alert-danger mt-2" element="div"/>
				
			  </div>
		  	  <button type="submit" class="btn btn-primary mb-2">Salvar</button>
	  
			</form>
        </div>
    </jsp:body>
</cdc:template>


    