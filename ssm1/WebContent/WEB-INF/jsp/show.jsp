<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
	function jump(page) {
		var pages=${page.pages}
		if (page>=1&&page<=pages) {
			document.getElementById("pn").value=page;
			document.getElementById("form").submit();
		}
	}
	
	function fun1() {
		//获取全选全不选的状态
		var nid=document.getElementById("nid");
		var flag=nid.checked;
		//获取复选框的状态
		var arr=document.getElementsByName("nids");
		for (var i = 0; i < arr.length; i++) {
			arr[i].checked=flag;
		}
	}
	function deleteAll(){
		document.getElementById("form").action="${pageContext.request.contextPath }/news/deleteAll.do";
		document.getElementById("form").submit();
	}
	
</script>

</head>
<body>
<h1>展示页面</h1>
<button onclick="deleteAll()">批量删除</button>
<a href="${pageContext.request.contextPath }/news/toadd.do">添加</a>
<form id="form" action="${pageContext.request.contextPath }/news/findAll.do" method="post">
	新闻标题：<input name="title" value=${news.title }>
	
	发布时间：<input name="starttime" value="<fmt:formatDate value="${news.starttime }"/>"
			class="Wdate" onfocus="WdatePicker()" readonly="readonly"/>--
			
	<input name="endtime"  value="<fmt:formatDate value="${news.endtime }"/>" 
	class="Wdate" onfocus="WdatePicker()" readonly="readonly"/>

<input type="hidden" name="pageNum" id="pn">
<input type="submit" value="查询">

<table border="1" cellspacing="1">
	<tr>
		<td>
			<input type="checkbox" id="nid" onclick="fun1()">全选/全不选
		</td>
		<td>新闻编号</td>
		<td>新闻主题</td>
		<td>新闻标题</td>
		<td>新闻图片</td>
		<td>新闻内容</td>
		<td>发布日期</td>
		<td>操作</td>
	</tr>
	<c:forEach var="n" items="${page.list }">
	<tr>
		<td>
			<input type="checkbox" name="nids" value="${n.nid }">
		</td>
		<td>${n.nid }</td>
		<td>${n.topics.topic }</td>
		<td>${n.title}</td>
		<td>
			<img alt="" src="/img/${n.img }" width="50px" height="50px">
		</td>
		<td>${n.content}</td>
		<td>
			<fmt:formatDate value="${n.createtime }" pattern="yyyy-MM-dd"/>
		</td>
		<td>
			<a href="${pageContext.request.contextPath }/news/findById.do?nid=${n.nid}">修改</a>
		</td>
	</tr>
	</c:forEach>
</table>
</form>
页码：${page.pageNum }/${page.lastPage }总条数：${page.total }
<input type="button" onclick="jump(${page.firstPage})" value="首页">
<input type="button" onclick="jump(${page.prePage})" value="上一页">
<input type="button" onclick="jump(${page.nextPage})" value="下一页">
<input type="button" onclick="jump(${page.lastPage})" value="尾页">
</body>
</html>