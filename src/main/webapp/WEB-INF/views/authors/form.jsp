<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<cdc:template>
    <jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Formulário de Criação Autores</h2>
	        <form  action="<c:url value='/authors/create' />" method="post">
			  <div class="form-group">
			    <label for="authorName">Nome</label>
			    <input type="text" class="form-control" name="name" id="authorName" value="${ authorForm.name }" placeholder="João da Silva">
			  	<form:errors path="authorForm.name" cssClass="alert alert-danger mt-2" element="div"/>
			  </div>
			  
  			  <div class="form-group">
			    <label for="authorEmail">E-mail</label>
			    <input type="email" class="form-control" name="email" id="authorEmail" value="${ authorForm.email }" placeholder="name@example.com">
			  	<form:errors path="authorForm.email" cssClass="alert alert-danger mt-2" element="div"/>
			  </div>
   			  <div class="form-group">
			    <label for="authorAvatarUrl">Avatar url</label>
			    <input type="text" class="form-control" name="avatarUrl" id="authorAvatarUrl" value="${ authorForm.avatarUrl }" placeholder="https://ui-avatars.com/api/?name=Joao+Silva">
				<form:errors path="authorForm.avatarUrl" cssClass="alert alert-danger mt-2" element="div"/>   			  
			  </div>
			  <div class="form-group">
			    <label for="authorDescription">Descrição</label>
			    <textarea class="form-control" name="description" id="authorDescription" rows="3" placeholder="João da Silva é desenvolvedor backend..."> ${ authorForm.description }</textarea>
			  	<form:errors path="authorForm.description" cssClass="alert alert-danger mt-2" element="div"/>
			  </div>
		  	  <button type="submit" class="btn btn-primary mb-2">Salvar</button>
	  
			</form>
        </div>
    </jsp:body>
</cdc:template>
    