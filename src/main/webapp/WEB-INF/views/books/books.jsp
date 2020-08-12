<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<cdc:template>
	<jsp:body>
			<div class="col main pt-5 mt-3">
				<h2 class="display-4 d-none d-sm-block">Painel de Livros</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-striped text-center">
						<thead class="thead-inverse">
							<tr>
								<th>#</th>
								<th>ID</th>
								<th>Título</th>
								<th>Autor</th>
								<th>Categoria</th>
								<th colspan="2">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="book" items="${ books }" varStatus="loop">
								<tr>
									<td>${ loop.index + 1 }</td>
									<td>${ book.id }</td>
									<td>${ book.title }</td>
									<td>${ book.authorName }</td>
									<td>${ book.categoryTitle }</td>
									<td><a class="nav-link" href=" <c:url value='/books/${ book.id }' />" data-toggle="tooltip"
											title="Visualizar"><i class="fa fa-eye fa-lg"></i></a></td>
									<td><a class="nav-link" href=" <c:url value='/books/${ book.id }/edit' />" data-toggle="tooltip"
											title="Editar"><i class="fa fa-pencil fa-lg"></i></a></td>
								</tr>
							</c:forEach>
	              </tbody>
	            </table>
	          </div>
	          <a href="<c:url value='/books/form' />"
				class="btn btn-primary"><i class="fa fa-book fa-1"></i> Novo livro</a>
			</div>
    </jsp:body>
</cdc:template>




