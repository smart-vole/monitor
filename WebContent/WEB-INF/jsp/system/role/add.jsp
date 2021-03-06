<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="addform" name="addform" class="form-horizontal" method="post"
		action="${pageContext.request.contextPath}/system/role/addEntity.shtml">
		<input name="resId" id="resId" type="hidden">
		<section class="panel panel-default">
		<div class="panel-body col-sm-8">
			<div class="form-group">
				<label class="col-sm-3 control-label">角色名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入角色名" name="roleFormMap.name" id="name">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">roleKey</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入roleKey" name="roleFormMap.roleKey" id="roleKey">
				</div>
			</div>
			<div id="selUser" data-url="/system/user/seletUser.shtml?lableName=用户组"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">描述</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入描述"
						name="roleFormMap.description" id="description">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否启用</label>
				<div class="col-sm-9">
					<label class="inline"><input id="id-button-borders"  checked="checked" onclick="checkstate(this)" type="checkbox" class="ace ace-switch ace-switch-6"><span class="lbl middle"></span></label>
					<input type="hidden"
							name="roleFormMap.state" id="state" value="1">
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/role/add.js"></script>