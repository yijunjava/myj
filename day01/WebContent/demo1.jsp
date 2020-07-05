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
		{{name}}<br>
		请输入<input v-model="num">
	阿君有{{num}}箱人民币<br>
	<button @click="add">
		点击添加
	</button>
	
	<button @click="del">
		点击减少
	</button>
	
	
	</div>
</body>
<script type="text/javascript">
	//创建vue实例
	var m=new Vue({
		el:'#m',
		data:{
			name:'阿君',
			num:1
		},
		
		methods:{
			//添加方法
			add:function(){
				this.num++;
			},
			del:function(){
				this.num--;
			},
		}
		
		
		
	});
	
	
</script>
</html>