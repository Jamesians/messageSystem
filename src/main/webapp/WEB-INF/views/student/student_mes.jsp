<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>layui</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<style type="text/css">
		table{width: 200px;border: 1px solid gray;border-collapse: collapse;}
		table th,table td{line-height: 30px;text-align: center;border: 1px solid gray;}
		#mess{ padding: 50px;}
		#mess2{margin-bottom: 50px}
		#p1{ font-size: 18px;}
		.layui-table-cell { pading: 0}
	</style>
	<script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js" ></script>
	<script src="../../../layui/layui.all.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" type="text/css" href="../../../layui/css/layui.css" />
	<script>
		//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function () {
			var element = layui.element;
		});
	</script>


	<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<div id="mess" >
	<div id="mess2">
	<p id="p1" align="center">个人信息</p>
	</div>
	<div id = "mess1" align="center"></div>
</div>
<script>
	$(document).ready(function () {
		$.ajax({
			url: "/student/mes-M",
			type: 'post',
			dataType: 'json',
			data: {
				//type: $("#type1").text(),
				sno:${sessionScope.user.uid}
			},
			success: function (data) {
				var scode = data.scode;
				var name = data.name;
				var gender = data.gender;
				var ename = data.ename;
				var enroll_year = data.enroll_year;
				var cname = data.cname;
				/*var mes  ="<table id=\"tab1\"  class=\"layui-table\" text-align=\"center\>" +
						"                        <colgroup>\n" +
						"                            <col width=\"200\">\n" +
						"                            <col width=\"200\">\n"+
						"</colgroup><tr>"+"<td>"+"姓名" +"</td><td>"+name+"</td></tr>"+
						"<tr>"+"<td>"+"学号" +"</td><td>"+scode+"</td></tr>"+
				 	"<tr>"+"<td>" +"性别"  + "</td>" +"</tr>"  +"</table>"//"<td>" + gender + "</td>" +  +*/
				var mes ="<table id=\"tab1\"  class=\"layui-table\" text-align=\"center\" lay-filter=\"LAY-table-1\">\n" +
				"                        <colgroup>\n" +
				"                            <col width=\"100px\">\n" +
				"                            <col width=\"100px\">\n"+
						                "</colgroup>"
				 mes  +="<tr>\n" +
						"<td>\n" + "姓名" + "</td>\n" +
				    	"<td>\n" + name + "</td>\n" + "</tr>\n" + "<tr>\n" +
						"<td>\n" + "学号" + "</td>\n" +
						"<td>\n" + scode + "</td>\n" + "</tr>\n" + "<tr>\n" +
					 	"<td>\n" + "性别" + "</td>\n" +
						"<td>\n" + gender + "</td>\n" + "</tr>\n" + "<tr>\n" +
					 	"<td>\n" + "班级" + "</td>\n" +
						"<td>\n" + cname + "</td>\n" + "</tr>\n" + "<tr>\n" +
					 	"<td>\n" + "学籍状态" + "</td>\n" +
						"<td>\n" + ename + "</td>\n" + "</tr>\n" + "<tr>\n" +
						"<td>\n" + "入学年份" + "</td>\n" +
						"<td>\n" + enroll_year + "</td>\n" + "</tr>\n"+"</table>";
				$("#mess1").append(mes);
			}});})

</script>

</body>
</html>
