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
</head>
<body>
<h1>添加页面</h1>
<form action="${pageContext.request.contextPath }/news/add.do" method="post" enctype="multipart/form-data">

	新闻主题：<select name="tid">
			<option value="">=请选择=</option>
			<c:forEach var="t" items="${tlist}">
				<option value="${t.tid }">${t.topic }</option>
			</c:forEach>
		</select><br>
	新闻标题：<input name="title"><br>
	图片：
	<input type="file" name="imgfile"><br>
	新闻内容 ：<input name="content"><br>
	发布时间：<input name="createtime" class="Wdate" onfocus="WdatePicker()" readonly="readonly"/>
	<input type="submit" value="添加">
</form>
</body>
</html>