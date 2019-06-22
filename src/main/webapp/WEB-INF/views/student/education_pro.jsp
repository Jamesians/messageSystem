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

		#pro1{ padding: 50px;}
		#pro2{margin-bottom: 50px}
		#pro3{ font-size: 18px;}

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
<div id="pro1" >
	<div id="pro2" >
	<p id="pro3" align="center">培养方案</p>
	</div>
	<div id = "pro4" align="center"></div>
	<div id="pro5" align="center"></div>
</div>
<script>
	$(document).ready(function () {
		$.ajax({
			url: "/student/Educationpro-M",
			type: 'post',
			dataType: 'json',
			data: {
				//type: $("#type1").text(),
				sno:${sessionScope.user.uid}
			},
			success: function (data) {
				var name = data.name;
				var objective=data.objective;
				var specification = data.specification;
				var degree = data.degree;
				var min_credit = data.min_credit;
				var duration = data.duration;
				var publish_year = data.publish_year;
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
						"<td>\n" + "名称" + "</td>\n" +
				    	"<td>\n" + name + "</td>\n" + "</tr>\n" + "<tr>\n" +
						"<td>\n" + "培养目标" + "</td>\n" +
						"<td>\n" + objective + "</td>\n" + "</tr>\n" + "<tr>\n" +
					 	"<td>\n" + "规格要求" + "</td>\n" +
						"<td>\n" + specification + "</td>\n" + "</tr>\n" + "<tr>\n" +
					 	"<td>\n" + "标准学制" + "</td>\n" +
						"<td>\n" + duration + "</td>\n" + "</tr>\n" + "<tr>\n" +
					 	"<td>\n" + "授予学位" + "</td>\n" +
						"<td>\n" + degree + "</td>\n" + "</tr>\n" + "<tr>\n" +
						"<td>\n" + "毕业学分要求" + "</td>\n" +
						"<td>\n" + min_credit + "</td>\n" + "</tr>\n"+"<tr>\n" +
						 "<td>\n" + "制定年份" + "</td>\n" +
						 "<td>\n" + publish_year + "</td>\n" + "</tr>\n"+"</table>";
				$("#pro4").append(mes);
			}});
		var CourseHead1= "<table id=\"tab2\"  class=\"layui-table\" text-align=\"center\">\n" +
				"                        <colgroup>\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                            <col width=\"200\">\n" +
				"                        </colgroup>\n" +
				"                        <thead id=\"tableHead1\">\n" +
				"                            <tr>\n" +
				"                                <th >课程类别</th>\n" +
				"                                <th>课程号</th>\n" +
				"                                <th>课程名</th>\n" +
				"                                <th>学期</th>\n" +
				"                                <th>学位课程</th>\n" +
				"                                <th>学分</th>\n" +
				"                                <th>周课堂时长</th>\n" +
				"                                <th>周实验时长</th>\n" +
				"                                <th>课堂总时长</th>\n" +
				"                                <th>实践总时长</th>\n" +
				"                            </tr>\n" +
				"                        </thead>\n" +
				"                        <tbody >\n" +
				"                        </tbody></table>";
		var semesters = new Array("大一上学期", "大一下学期", "大二上学期", "大二下学期", "大三上学期", "大三下学期", "大四上学期", "大四下学期");
		$.ajax({
					url:"/student/Educationpro-N",
					type:'post',
					dataType: 'json',
					data:{
						sno:${sessionScope.user.uid}
					},
					success:function (data) {
						$("#pro5").append(CourseHead1);
						$("#pro5 >table >tbody").attr('id', 'procontent');
						if (data != null) {
							$("#procontent").empty();
							$.each(data,function (index,item) {
								var score = item.score;
								var number = item.number;
								var chour= item.chour;
								var lhour = item.lhour;
								var tchour = item.tchour;
								var tlhour = item.tlhour;
								var semester = item.semester;
								var isdegree =item.isdegree;
								var pname = item.pname;
								var cname = item.cname;
								var caname = item.caname;
								semester = semesters[semester-1];
								if(isdegree==1)
									isdegree="是";
								else isdegree="否";

								var proContent = "<tr>" +
										"<td>" + caname + "</td>" +
								        "<td>" + number + "</td>" +
								        "<td>" + cname + "</td>" +
										"<td>" + semester+ "</td>"+
								        "<td>" + isdegree + "</td>" +
										"<td>" +score + "</td>"+
								        "<td>" + chour + "</td>"+
								         "<td>" + lhour+ "</td>"+
							          	"<td>" + tchour + "</td>"+
								        "<td>" + tlhour+ "</td>"+
										"</tr>"

								$("#procontent").append(proContent);
							})
						}
		}});
	})

</script>

</body>
</html>
