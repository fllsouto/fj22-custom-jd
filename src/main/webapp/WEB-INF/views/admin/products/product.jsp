<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<cdc:adminTemplate>
	<jsp:body>
 		<div class="col main pt-5 mt-3">
			<h2 class="display-4 d-none d-sm-block">Informações do Produto</h2>
			<img class="col-sm-2" src="${ product.cover }">
			<dl class="pt-3 dl-horizontal">
			  <dt class="col-sm-9">Título</dt>
			  <dd class="col-sm-9">${ product.title }</dd>
			
  			  <dt class="col-sm-9">Tipo</dt>
			  <dd class="col-sm-9">${ product.kind }</dd>
			  
  			  <dt class="col-sm-9">Preço</dt>
			  <dd class="col-sm-9">
			  	<fmt:formatNumber value="${ product.price }" type="currency" currencySymbol="R$"/>
			  </dd>
			  
			</dl>
		</div>
    </jsp:body>
</cdc:adminTemplate>


