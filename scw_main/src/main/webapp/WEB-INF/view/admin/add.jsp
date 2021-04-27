<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh_CN">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<%@include file="/WEB-INF/view/common/css/css.jsp"%>
	<style>
	.tree li {
        list-style-type: none;
		cursor:pointer;
	}
	</style>
  </head>

  <body>

 	<%@include file="/WEB-INF/view/common/header/header.jsp"%>

    <div class="container-fluid">
      <div class="row">
      <jsp:include page="/WEB-INF/view/common/left_tree/left_tree.jsp"></jsp:include>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<ol class="breadcrumb">
				  <li><a href="#">首页</a></li>
				  <li><a href="#">数据列表</a></li>
				  <c:if test="${not empty addOrUpdate.loginacct}">
				  <li class="active">修改</li>
				  </c:if>
				   <c:if test="${empty addOrUpdate.loginacct}">
				  <li class="active">新增</li>
				  </c:if>
				</ol>
			<div class="panel panel-default">
              <div class="panel-heading">表单数据<div style="float:right;cursor:pointer;" data-toggle="modal" data-target="#myModal"><i class="glyphicon glyphicon-question-sign"></i></div></div>
			  <div class="panel-body">
				<form:form id="saveOrUpdateForm" role="form" modelAttribute="addOrUpdate" method="POST">
				  <c:if test="${not empty addOrUpdate.loginacct}">
				  	<input name="_method" value="put" type="hidden"/>
				  	<input name="pageNum" value="${param.pageNum }" type="hidden"/>
				  	<form:input path="id" name="id" type="hidden"/>
				  </c:if>
				  <div class="form-group">
					<label for="exampleInputPassword1">登陆账号</label>
					<form:input path="loginacct"  type="text" class="form-control" id="loginacct" name="loginacct" placeholder="请输入登陆账号"></form:input>
				  </div>
				  <div class="form-group">
					<label for="exampleInputPassword1">用户名称</label>
					<form:input path="username" type="text" class="form-control" id="username" name="username" placeholder="请输入用户名称"></form:input>
				  </div>
				  <div class="form-group">
					<label for="exampleInputEmail1">邮箱地址</label>
					<form:input path="email" type="email" class="form-control" id="email" name="email" placeholder="请输入邮箱地址"></form:input>
					<p class="help-block label label-warning">请输入合法的邮箱地址, 格式为： xxxx@xxxx.com</p>
				  </div>
				   <c:if test="${not empty addOrUpdate.loginacct}">
				  <button type="button" class="btn btn-primary" onclick="doEdit()"><i class="glyphicon glyphicon-plus" ></i> 修改</button>
				  </c:if>
				   <c:if test="${empty addOrUpdate.loginacct}">
				  <button type="button"  class="btn btn-success" onclick="doAdd()"><i class="glyphicon glyphicon-plus"></i> 新增</button>
				  </c:if>
				  <button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-refresh"></i> 重置</button>
				</form:form>
			  </div>
			</div>
        </div>
      </div>
    </div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
			<h4 class="modal-title" id="myModalLabel">帮助</h4>
		  </div>
		  <div class="modal-body">
			<div class="bs-callout bs-callout-info">
				<h4>测试标题1</h4>
				<p>测试内容1，测试内容1，测试内容1，测试内容1，测试内容1，测试内容1</p>
			  </div>
			<div class="bs-callout bs-callout-info">
				<h4>测试标题2</h4>
				<p>测试内容2，测试内容2，测试内容2，测试内容2，测试内容2，测试内容2</p>
			  </div>
		  </div>
		  <!--
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="button" class="btn btn-primary">Save changes</button>
		  </div>
		  -->
		</div>
	  </div>
	</div>
<%@include file="/WEB-INF/view/common/script/script.jsp" %>
        <script type="text/javascript">
            $(function () {
			    $(".list-group-item").click(function(){
				    if ( $(this).find("ul") ) {
						$(this).toggleClass("tree-closed");
						if ( $(this).hasClass("tree-closed") ) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});
            });
            <!--提交表单,修改信息-->
           function doEdit(){
        	  $("#saveOrUpdateForm").attr("action","/scw_main/admin/doEdit").submit(); 
           };
           <!--提交表单,添加用户-->
           function doAdd(){
        	  var loginacct = $("#loginacct").val();
        	  if($.trim(loginacct)==""){
        		  layer.tips('用户名不能为空', $("#loginacct"), {
        			  tips: [1, '#3595CC'],
        			  time:2000
        			});
        		  return false;
        	  }
        		
         	  $("#saveOrUpdateForm").attr("action","/scw_main/admin/doAdd").submit(); 
            };
        </script>
  </body>
</html>
