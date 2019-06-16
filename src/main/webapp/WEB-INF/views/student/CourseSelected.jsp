<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<script src="../../../resource/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../../../resource/layui/css/layui.css" />
<style type="text/css">
    body{
        margin: 100px 10px 0px 80px;
    }
</style>
<head>
    <style type="text/css">
        #test{
            margin-top:100px;
        }
        i {
            float: left;
        }
        #top_head {
            float: left;
        }

        #top_head {
            font: normal bold 20px/20px arial, sans-serif;
            margin-top: 10px;
            margin-left: 10px;
        }

        header {
            margin-top: 10px;
            margin-bottom: 20px;
            float: left;
        }
    </style>
    <script>
        var semesters = new Array("大一上学期", "大一下学期", "大二上学期", "大二下学期", "大三上学期", "大三下学期", "大四上学期", "大四下学期");
        $(document).ready(function () {
            $.ajax({
                url:"/student//Course-Study",
                type:'post',
                dataType:'json',
                data:{
                    sno:${sessionScope.user.uid}
                },
                success:function (data) {
                    if(data!=null)
                    {
                        $.each(data,function (index,item) {
                            var course_id = item.course_id;
                            var cname = item.cname;
                            var ename = item.ename;
                            var name = item.name;
                            var score = item.score;
                            var tname = item.tname;
                            var semester = item.semester;
                            semester = semesters[semester-1];
                            var CourseContent = "<tr>"+
                                "<td>"+course_id+"</td>"+
                                "<td>"+cname+"</td>"+
                                "<td>"+ename+"</td>"+
                                "<td>"+name+"</td>"+
                                "<td>"+score+"</td>"+
                                "<td>"+tname+"</td>"+
                                "<td>"+semester+"</td>"+
                                "<td><button class=\"layui-btn layui-btn-danger cancleBut\">退选</button></td>"+"</tr>";
                            $("#CourseContent").append(CourseContent);
                        })
                    }
                }
                
            })
        })
    </script>
</head>

<body>
    <header>
        <i class="layui-icon layui-icon-release" style="font-size: 30px; margin-left: 15px;"></i>
        <p id="top_head">已选课程</p>
    </header>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="150">
            <col width="150">
        </colgroup>
        <thead>
            <tr id="head_course">
                <th lay-data="{field:'id', width:80, sort: true, fixed: true}">课程号</th>
                <th>课程名</th>
                <th>英文名</th>
                <th>课程性质</th>
                <th>学分</th>
                <th>任课老师</th>
                <th>开课学期</th>
                <th></th>
            </tr>
        </thead>
        <tbody id = "CourseContent">
            <%--<tr>--%>
                <%--<td>30</td>--%>
                <%--<td>0</td>--%>
                <%--<td>0</td>--%>
                <%--<td>0</td>--%>
                <%--<td>0</td>--%>
                <%--<td>0</td>--%>
                <%--<td>0</td>--%>
                <%--<td><button class="layui-btn layui-btn-danger"--%>
                    <%--data-anim="layui-anim-scaleSpring">退选</button>--%>
            <%--</tr>--%>
        </tbody>
    </table>
</body>
</html>