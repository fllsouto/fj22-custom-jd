<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<cdc:template>
    <jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Painel de Autores</h2>
	          <div class="table-responsive">
	            <table class="table table-bordered table-striped text-center">
	              <thead class="thead-inverse">
	                <tr>
	                  <th>#</th>
	                  <th>ID</th>
	                  <th>Nome</th>
	                  <th colspan="2">Ações</th>
	                </tr>
	              </thead>
	              <tbody>
	              	<c:forEach var="author" items="${ authors }" varStatus="loop">
		              	<tr>
		                  <td>${ loop.index + 1 }</td>
		                  <td>${ author.id }</td>
		                  <td>${ author.name }</td>
		                  <td><a class="nav-link" href=" <c:url value='/authors/${ author.id }' />" data-toggle="tooltip" title="Visualizar"><i class="fa fa-eye fa-lg"></i></a></td>
		                  <td><a class="nav-link" href=" <c:url value='/authors/${ author.id }/edit' />" data-toggle="tooltip" title="Editar"><i class="fa fa-pencil fa-lg"></i></a></td>
		                </tr>
	              	</c:forEach>
	              </tbody>
	            </table>
	          </div>
	          <a href="<c:url value='/authors/form' />" class="btn btn-primary"><i class="fa fa-user-plus fa-1"></i> Novo autor</a>
        </div>
    </jsp:body>
</cdc:template>


    