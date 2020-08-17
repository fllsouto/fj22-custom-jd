<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<cdc:template>
    <jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Painel de Produtos</h2>
	          <div class="table-responsive">
	            <table class="table table-bordered table-striped text-center">
	              <thead class="thead-inverse">
	                <tr>
	                  <th>#</th>
	                  <th>ID</th>
	                  <th>Título do livro</th>
        	          <th>Tipo</th>
	                  <th>Valor</th>
	                  <th colspan="2">Ações</th>
	                </tr>
	              </thead>
	              <tbody>
	              	<c:forEach var="product" items="${ products }" varStatus="loop">
		              	<tr>
		                  <td>${ loop.index + 1 }</td>
		                  <td>${ product.id }</td>
		                  <td>${ product.title }</td>
		                  <td>${ product.kind }</td>
		                  <td>${ product.price }</td>
		                  <td><a class="nav-link" href=" <c:url value='/admin/products/${ product.id }' />" data-toggle="tooltip" title="Visualizar"><i class="fa fa-eye fa-lg"></i></a></td>
		                  <td><a class="nav-link" href=" <c:url value='/admin/products/${ product.id }/remove' />" data-toggle="tooltip" title="Remover"><i class="fa fa-trash fa-lg"></i></a></td>
		                </tr>
	              	</c:forEach>
	              </tbody>
	            </table>
	          </div>
	          <a href="<c:url value='/admin/products/form' />" class="btn btn-primary"><i class="fa fa-cube fa-1"></i> Novo produto</a>
        </div>
    </jsp:body>
</cdc:template>


    