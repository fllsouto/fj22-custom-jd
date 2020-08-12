<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<cdc:template>
	<jsp:body>
			<div class="col main pt-5 mt-3">
				<h2 class="display-4 d-none d-sm-block">Painel de Categorias</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-striped text-center">
						<thead class="thead-inverse">
							<tr>
								<th>#</th>
								<th>ID</th>
								<th>Título</th>
								<th colspan="2">Ações</th>
							</tr>
						</thead>
						<tbody>
		              	<c:forEach var="category" items="${ categories }" varStatus="loop">
			              	<tr>
			                  <td>${ loop.index + 1 }</td>
			                  <td>${ category.id }</td>
			                  <td>${ category.title }</td>
			                  <td><a class="nav-link" href=" <c:url value='/categories/${ category.id }' />" data-toggle="tooltip" title="Visualizar"><i class="fa fa-eye fa-lg"></i></a></td>
			                  <td><a class="nav-link" href=" <c:url value='/categories/${ category.id }/edit' />" data-toggle="tooltip" title="Editar"><i class="fa fa-pencil fa-lg"></i></a></td>
			                </tr>
	              		</c:forEach>
	              </tbody>
	            </table>
	          </div>
	          <a href=" <c:url value='/categories/form' />"
				class="btn btn-primary"><i class="fa fa-list fa-1"></i> Nova categoria</a>
			</div>
    </jsp:body>
</cdc:template>




