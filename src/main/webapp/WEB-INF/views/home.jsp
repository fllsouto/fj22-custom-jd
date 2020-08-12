<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<cdc:template>
    <jsp:body>
    	<div class="col main pt-5 mt-3">
					<h2 class="display-4 d-none d-sm-block">Painel de Administração</h2>
	
					<div class="row mb-3">
						<div class="col-xl-3 col-sm-6 py-2">
							<div class="card bg-success text-white h-100">
								<div class="card-body bg-success">
									<div class="rotate">
										<i class="fa fa-user fa-4x"></i>
									</div>
									<h6 class="text-uppercase">Autores</h6>
									<span class="display-4 authorsNumber"></span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 py-2">
							<div class="card text-white bg-danger h-100">
								<div class="card-body bg-danger">
									<div class="rotate">
										<i class="fa fa-list fa-4x"></i>
									</div>
									<h6 class="text-uppercase">Categorias</h6>
									<span class="display-4 categoriesNumber"><span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 py-2">
							<div class="card text-white bg-info h-100">
								<div class="card-body bg-info">
									<div class="rotate">
										<i class="fa fa-book fa-4x"></i>
									</div>
									<h6 class="text-uppercase">Livros</h6>
									<span class="display-4 booksNumber"></span>
								</div>
							</div>
						</div>
					</div>
					<!--/row-->
				</div>

				<script async >
					function fetchInformations(url, element) {
						$.get(url, function (data) {
							$(element).text(data);
						})
					}

					fetchInformations("authors/total", ".authorsNumber");
					fetchInformations("categories/total", ".categoriesNumber");
					fetchInformations("books/total", ".booksNumber");
				</script>
    </jsp:body>
</cdc:template>