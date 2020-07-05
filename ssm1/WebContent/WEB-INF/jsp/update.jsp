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
<h1>修改页面</h1>
<form action="${pageContext.request.contextPath }/news/update.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="nid" value="${news.nid }">
	<input type="hidden" name="img" value="${news.img }">
	新闻主题：<select name="tid">
			<option value="">=请选择=</option>
			<c:forEach var="t" items="${tlist}">
				<option value="${t.tid }" <c:if test="${news.tid==t.tid }">selected</c:if>>${t.topic }</option>
			</c:forEach>
		</select><br>
	新闻标题：<input name="title" value="${news.title }"><br>
	图片：<img alt="" src="/img/${news.img }" width="50px" height="50px">
	<input type="file" name="imgfile"><br>
	新闻内容 ：<input name="content" value="${news.content }"><br>
	发布时间：<input name="createtime" class="Wdate" onfocus="WdatePicker()" readonly="readonly" value="<fmt:formatDate value="${news.createtime }" pattern="yyyy-MM-dd"/>"/>
	<input type="submit" value="修改">
</form>
</body>
</html>