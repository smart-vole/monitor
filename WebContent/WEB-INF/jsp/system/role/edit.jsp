<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
<form id="editform" name="editform" class="form-horizontal"
	method="post"
	action="${pageContext.request.contextPath}/system/role/editEntity.shtml">
	<input type="hidden" class="form-control checkacc" value="${id}"
		name="roleFormMap.id" id="id"> <input name="resId" id="resId"
		type="hidden">
	<section class="panel panel-default">
		<div class="panel-body col-sm-8">
			<div class="form-group">
				<label class="col-sm-3 control-label">角色名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkRole"
						placeholder="请输入角色名" name="roleFormMap.name" id="name"
						value="${name}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">roleKey</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入roleKey" name="roleFormMap.roleKey" id="roleKey"
						value=${roleKey}>
				</div>
			</div>
			<div id="selUser"
				data-url="/system/user/seletUser.shtml?userFormMap.roleId=${id}&lableName=用户组"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">描述</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入角色描述"
						name="roleFormMap.description" id="description"
						value="${description }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否启用</label>
				<div class="col-sm-9">
					<label class="inline"><input id="id-button-borders"
						<c:if test="${state eq 1}"> checked="checked"</c:if>
						onclick="checkstate(this)" type="checkbox"
						class="ace ace-switch ace-switch-6"><span
						class="lbl middle"></span></label> <input type="hidden"
						name="roleFormMap.state" id="state" value="${state}">
				</div>
			</div>
		</div>
		<div class="panel-body col-sm-4">
			<label class="col-sm-12">分配权限</label>
			<ul id="pztree" class="ztree col-sm-12"></ul>
		</div>
		<div class="col-sm-12">
			<%@include file="/common/buttom.jspf"%>
		</div>
	</section>
</form>
<script type="text/javascript">
var roleId = ${id};
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/system/role/edit.js"></script>
