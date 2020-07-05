<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
	<div id="m">
		v-text：<span v-text="name"></span><br>
		v-html：<span v-html="name"></span>
	</div>
</body>
<script type="text/javascript">
	var m=new Vue({
		el:'#m',
		data:{
			name:'<h1>阿君</h1>'
		}
		
	});
</script>
</html>