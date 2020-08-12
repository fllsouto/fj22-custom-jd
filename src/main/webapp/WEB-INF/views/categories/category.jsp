<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<cdc:template>
	<jsp:body>
 		<div class="col main pt-5 mt-3">
			<h2 class="display-4 d-none d-sm-block">Informações da Categoria</h2>
			<dl class="pt-3 dl-horizontal">
			  <dt class="col-sm-9">Título</dt>
			  <dd class="col-sm-9">${ category.title }</dd>
			
  			  <dt class="col-sm-9">Descrição</dt>
			  <dd class="col-sm-9">${ category.description }</dd>
			  
  			  <dt class="col-sm-9">Quantidade de livros públicados nessa categoria</dt>
			  <dd class="col-sm-9">${ numberOfBooks }</dd>
			</dl>
		</div>
    </jsp:body>
</cdc:template>


    