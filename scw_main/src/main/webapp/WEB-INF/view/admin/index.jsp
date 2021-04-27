<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="GB18030">
<head>
<meta charset="GB18030">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<%@include file="/WEB-INF/view/common/css/css.jsp"%>
<style type="text/css">
.tree li {
	list-style-type: none;
	cursor: pointer;
}

table tbody tr:nth-child(odd) {
	background: #F4F4F4;
}

table tbody td:nth-child(even) {
	color: #C00;
}
</style>
</head>

<body>

	<%@include file="/WEB-INF/view/common/header/header.jsp"%>

	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/WEB-INF/view/common/left_tree/left_tree.jsp"></jsp:include>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class="glyphicon glyphicon-th"></i> 数据列表
						</h3>
					</div>
					<div class="panel-body">
						<form class="form-inline" role="form" style="float: left;"
							action="">
							<div class="form-group has-feedback">
								<div class="input-group">
									<div class="input-group-addon">查询条件</div>
									<input class="form-control has-success" type="text"
										placeholder="请输入查询条件">
								</div>
							</div>
							<button type="button" class="btn btn-warning">
								<i class="glyphicon glyphicon-search"></i> 查询
							</button>
						</form>
						<button type="button" class="btn btn-danger"
							style="float: right; margin-left: 10px;">
							<i class=" glyphicon glyphicon-remove"></i> 删除
						</button>
						<button type="button" class="btn btn-primary"
							style="float: right;" onclick="window.location.href='${PATH}/admin/toAdd'">
							<i class="glyphicon glyphicon-plus"></i> 新增
						</button>
						<br>
						<hr style="clear: both;">
						<div class="table-responsive">
							<table class="table  table-bordered">
								<thead>
									<tr>
										<th width="30">#</th>
										<th width="30"><input type="checkbox"></th>
										<th>账号</th>
										<th>名称</th>
										<th>邮箱地址</th>
										<th width="100">操作</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${PAGE.list }" var="admin" varStatus="status">
									<tr>
										<td>${status.count }</td>
										<td><input type="checkbox"></td>
										<td>${admin.loginacct }</td>
										<td>${admin.username }</td>
										<td>${admin.email }</td>
										<td>
											<button type="button" class="btn btn-success btn-xs" onclick="window.location.href ='${PATH}/admin/toEdit?id=${admin.id }'">
												<i class=" glyphicon glyphicon-check"></i>
											</button>
											<button type="button" adminId="${admin.id }" class="btn_delete btn btn-primary btn-xs">
												<i class=" glyphicon glyphicon-pencil"></i>
											</button>
											<button type="button" class="btn btn-danger btn-xs" onclick="window.location.href ='${PATH}/admin/doDelete?id=${admin.id }&pageNum=${PAGE.pageNum}'">
												<i class=" glyphicon glyphicon-remove"></i>
											</button>
										</td>
									</tr>
								</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="6" align="center">
											<ul class="pagination">
												<c:if test="${PAGE.isFirstPage }">
												<li class="disabled"><a href="#">上一页</a></li>
												</c:if>
												<c:if test="${!PAGE.isFirstPage }">
												<li><a href="${PATH }/admin/index/?pageNum=${PAGE.pageNum-1}">上一页</a></li>
												</c:if>
												<c:forEach items="${PAGE.navigatepageNums }" var="page">
												<c:if test="${PAGE.pageNum==page }">
												<li class="active"><a href="${PATH }/admin/index/?pageNum=${page}">${page } <span
														class="sr-only">(current)</span></a></li>
												</c:if>
												<c:if test="${PAGE.pageNum!=page }">
												<li><a href="${PATH }/admin/index/?pageNum=${page}">${page}</a></li>
												</c:if>
											
												</c:forEach>
												<c:if test="${PAGE.isLastPage }">
												<li class="disabled"><a href="#">下一页</a></li>
												</c:if>
												<c:if test="${!PAGE.isLastPage }">
												<li ><a href="${PATH }/admin/index/?pageNum=${PAGE.pageNum+1}">下一页</a></li>
												</c:if>
												
											</ul>
										</td>
									</tr>

								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@include file="/WEB-INF/view/common/script/script.jsp" %>
	<script type="text/javascript">
		$(function() {
			$(".list-group-item").click(function() {
				if ($(this).find("ul")) {
					$(this).toggleClass("tree-closed");
					if ($(this).hasClass("tree-closed")) {
						$("ul", this).hide("fast");
					} else {
						$("ul", this).show("fast");
					}
				}
			});
			<!--在这里加上点击shijian-->
			$(".btn_delete").click(function() {
				var id= $(this).attr("adminId");
				layer.confirm('您是否要删除呢？', {
					  btn: ['确定','取消'] //按钮
					}, function(index){
						window.location.href ="${PATH}/admin/doDelete?id="+id+"&pageNum=${PAGE.pageNum}";
						layer.close(index);
					}, function(index){
						layer.close(index);
					  });
					});
		});
	</script>
</body>
</html>
