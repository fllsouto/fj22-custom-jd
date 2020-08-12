<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<cdc:template>
	<jsp:body>
 		<div class="col main pt-5 mt-3">
			<h2 class="display-4 d-none d-sm-block">Informações do Livro</h2>
			<img class="col-sm-2" src="${ book.coverUrl }">
			<dl class="pt-3 dl-horizontal">
			  <dt class="col-sm-9">Título</dt>
			  <dd class="col-sm-9">${ book.title }</dd>
			
  			  <dt class="col-sm-9">Data de lançamento</dt>
			  <dd class="col-sm-9">${ book.releaseDate }</dd>

  			  <dt class="col-sm-9">Quantidade de páginas</dt>
			  <dd class="col-sm-9">${ book.pages }</dd>

  			  <dt class="col-sm-9">Autor</dt>
			  <dd class="col-sm-9">${ book.authorName }</dd>

  			  <dt class="col-sm-9">Categoria</dt>
			  <dd class="col-sm-9">${ book.categoryTitle }</dd>
			  
  			  <dt class="col-sm-9">Descrição</dt>
			  <dd class="col-sm-9">${ book.description }</dd>
			  
			</dl>
		</div>
    </jsp:body>
</cdc:template>


    