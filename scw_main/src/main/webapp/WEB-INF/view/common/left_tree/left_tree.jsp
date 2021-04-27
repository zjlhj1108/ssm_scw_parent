<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<div class="tree">
				<ul style="padding-left: 0px;" class="list-group">
					<c:forEach items="${menuList }" var="menu" >
						<c:if test="${empty menu.menuList }">
							<li class="list-group-item tree-closed"><a href="${ PATH }/${menu.url}"><i
									class="${menu.icon }"></i> ${menu.name }</a></li>

						</c:if>
						<c:if test="${not empty menu.menuList }">
							<li class="list-group-item tree-closed"><span><i
									class="${menu.icon }"></i>${menu.name} <span
									class="badge" style="float: right">${menu.menuList.size()}</span></span>
								<ul style="margin-top: 10px; display: none;">
									<c:forEach items="${menu.menuList }" var="subMenu">
										<li style="height: 30px;"><a href="${ PATH }/${subMenu.url}"><i
												class="${subMenu.icon }"></i> ${subMenu.name }</a></li>
									</c:forEach>
								</ul></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>