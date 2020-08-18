<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ attribute name="productTitle" required="true"%>
<%@ attribute name="productCoverUrl" required="true"%>
<%@ attribute name="productKind" required="true"%>
<%@ attribute name="productPrice" required="true"%>
<%@ attribute name="productUrl" required="true"%>

<li class="vitrine-destaque-item d-flex flex-column justify-content-between align-items-center">
	<span class="h3 vitrine-destaque-item-name">${ productTitle }</span>
	<img class="vitrineDestacao-item-imagem" src="${ productCoverUrl }" title="${ productTitle }">
	<span class="h4 vitrine-destaque-item-price">${ productKind }</span>
		<span class="h4 vitrine-destaque-item-price"><fmt:formatNumber value="${ productPrice }" type="currency"  currencySymbol="R$" /></span>
	
	<a href="#" class="btn btn-warning vitrine-destaque-link" role="button" >
		<i class="fa fa-cart-plus fa-lg"></i>
	</a>
	<a href="${ productUrl }" class="btn btn-primary vitrine-destaque-link" role="button" >
		Mais detalhes
	</a>

</li>
