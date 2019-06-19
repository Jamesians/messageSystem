<!--
Created by IntelliJ IDEA.
User: Administrator
Date: 2019/6/11
Time: 21:38
To change this template use File | Settings | File Templates.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CourseSelect</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
    <!-- <script src="../../../resource/js/courseSelectJs.js" type="text/javascript"></script> -->

    <script src="../../../layui/layui.all.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="../../../layui/css/layui.css" />
    <!-- <link rel="styleSheet" type="text/css" href="../../../resource/css/CourseSelect.css" /> -->
    <style type="text/css">
        body{
            margin: 100px 10px 0px 80px;
        }
        div.search {
            padding: 30px 0
        }

        form {
            position: relative;
            width: 300px;
            margin: 0 auto;
        }

        .d1 {
            background: #A3D0C3;
        }

        .d1 input {
            width: 100%;
            height: 42px;
            padding-left: 10px;
            border: 2px solid #7BA7AB;
            border-radius: 5px;
            outline: none;
            background: #F9F0DA;
            color: #9E9C9C;
        }

        .d1 button {
            position: absolute;
            top: 0;
            right: 0px;
            width: 42px;
            height: 42px;
            border: none;
            background: #7BA7AB;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
        }

        .d1 button:before {
            content: "\f002";
            font-family: FontAwesome;
            font-size: 16px;
            color: #F9F0DA;
        }

    </style>
    <script>
        //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function () {
            var element = layui.element;
        });
    </script>
</head>

<body>
<header id="top_header">选课系统</header>
<hr class="layui-bg-gray">

<table class="layui-table">
    <colgroup>
        <col width="150">
        <col width="200">
        <col width="150">
    </colgroup>
    <thead>
    <tr>
        <th>所有学分</th>
        <th>剩余学分</th>
        <th>已选学分</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td id = "totalScore">30</td>
        <td id = "restScore">0</td>
        <td id = "selectScore">0</td>
    </tr>
    </tbody>
</table>
<div class="search d1">
    <form>
        <input type="text" placeholder="课程名搜索...">
        <button type="submit"></button>
    </form>
</div>
<div></div>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" id="main_content">
    <ul class="layui-tab-title">
        <li class="layui-this" id="type1">公共基础</li>
        <li id="type2">学科基础</li>
        <li id="type3">专业主干</li>
        <li id="type4">专业任选</li>
        <li id="type5">专业限选</li>
        <li id="type6">公共选修</li>

    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show" id="course1">


        </div>
        <div class="layui-tab-item" id="course2">内容2</div>
        <div class="layui-tab-item" id="course3">内容3</div>
        <div class="layui-tab-item" id="course4">内容4</div>
        <div class="layui-tab-item" id="course5">内容5</div>
        <div class="layui-tab-item" id="course6">内容5</div>
    </div>
</div>

<script>
    var CourseHead = "<table id=\"tab1\"  class=\"layui-table\" text-align=\"center\">\n" +
         "                        <colgroup>\n" +
        "                            <col width=\"200\">\n" +
        "                            <col width=\"200\">\n" +
        "                            <col width=\"200\">\n" +
        "                            <col width=\"200\">\n" +
        "                            <col width=\"200\">\n" +
        "                            <col width=\"200\">\n" +
        "                            <col width=\"200\">\n" +
        "                            <col width=\"200\">\n" +
        "                        </colgroup>\n" +
        "                        <thead id=\"tableHead\">\n" +
        "                            <tr>\n" +
        "                                <th >课程号</th>\n" +
        "                                <th>课程名</th>\n" +
        "                                <th>英文名</th>\n" +
        "                                <th>学期</th>\n" +
        "                                <th>学分</th>\n" +
        "                                <th>课程容量</th>\n" +
        "                                <th>剩余容量</th>\n" +
        "                                <th>选课</th>\n" +
        "                            </tr>\n" +
        "                        </thead>\n" +
        "                        <tbody >\n" +
        "                        </tbody></table>";
    var semesters = new Array("大一上学期", "大一下学期", "大二上学期", "大二下学期", "大三上学期", "大三下学期", "大四上学期", "大四下学期");
    $(document).ready(function () {
        $.ajax({
            url: "/student/chosecourse-M",
            type: 'post',
            dataType: 'json',
            data: {
                //type: $("#type1").text(),
                sno:${sessionScope.user.uid}
            },
            success: function (data) {
                $("#course1").append(CourseHead);
                $("#course1 >table >tbody").attr('id', 'CourseContent1');
                if (data != null) {
                    $("#CourseContent1").empty();
                    $.each(data, function (index, item) {
                        var number = item.number;
                        var cname = item.cname;
                        var ename = item.ename;
                       var semester = item.semester;
                        var score = item.score;
                        var max_class_size = item.max_class_size;
                        var rest_size = item.rest_num;
                        var flag = item.flag;
                        semester = semesters[semester-1];
                        var CourseContent = "<tr>" +
                            "<td>" + number + "</td>" +
                            "<td>" + cname + "</td>" +
                            "<td>" + ename + "</td>" +
                            "<td>" + semester + "</td>" +
                            "<td>" + score + "</td>"+
                            "<td>" + max_class_size+ "</td>"+
                            "<td>" + rest_size + "</td>";
                        if(flag=="1")
                            CourseContent += "<td><button class=\"layui-btn layui-btn-normal selectBut\">选课</button></td>" + "</tr>"
                        else
                            CourseContent += "<td><button class=\"layui-btn layui-btn-danger cancleBut\">退选</button></td>" + "</tr>"
                        $("#CourseContent1").append(CourseContent);
                    });
                }
            }
        })
        $.ajax({
            url:"/student/chosecourse-N",
            type:'post',
            dataType:'json',
            data:{
                sno:${sessionScope.user.uid}
            },
            success:function (data) {
                var totalScore = parseInt($("#totalScore").text());
                var restScore = parseInt($("#restScore").text());
                var selectScore = 0;
                if(data!=null)
                {
                    $.each(data,function (index,item) {

                        var score = item.score;
                        selectScore += parseInt(score);
                    })
                    $("#restScore").html(totalScore-selectScore);
                    $("#selectScore").html(selectScore);
                }
            }
        })

    })
    $("#type1,#type2,#type3,#type4,#type5,#type6").click(function (e) {
        var type = e.target.id;
        var tbodyId;
        var courseId;
        switch (type) {
            case "type1":
                tbodyId = "CourseContent1";
                courseId = "course1";
                break;
            case "type2":
                tbodyId = "CourseContent2";
                courseId = "course2";
                break;
            case "type3":
                tbodyId = "CourseContent3";
                courseId = "course3";
                break;
            case "type4":
                tbodyId = "CourseContent4";
                courseId = "course4";
                break;
            case "type5":
                tbodyId = "CourseContent5";
                courseId = "course5";
                break;
            case "type6":
                tbodyId = "CourseContent6";
                courseId = "course6";
                break;
        }
        $("#"+courseId).empty();
        $("#"+courseId).append(CourseHead);
        $("#"+courseId+" >table >tbody").attr('id', tbodyId);
        //alert("nice");
        $.ajax({
            url: "/student/chosecourse-M",
            type: 'post',
            dataType: 'json',
            data: {
                type: $("#"+type).text(),
                sno:${sessionScope.user.uid}
            },
            success: function (data) {

                if (data != null) {
                    $("#"+tbodyId).empty();
                    $.each(data, function (index, item) {
                        var number = item.number;
                        var cname = item.cname;
                        var ename = item.ename;
                        var semester = item.semester;
                        var score = item.score;
                        var max_class_size = item.max_class_size;
                        var rest_size = item.rest_num;
                        var flag = item.flag;
                        semester = semesters[semester-1];
                        var CourseContent = "<tr>" +
                            "<td>" + number + "</td>" +
                            "<td>" + cname + "</td>" +
                            "<td>" + ename + "</td>" +
                            "<td>" + semester + "</td>" +
                            "<td>" + score + "</td>" +
                            "<td>" + max_class_size+ "</td>"+
                            "<td>" + rest_size + "</td>";
                        if(flag=="1")
                            CourseContent += "<td><button class=\"layui-btn layui-btn-normal selectBut\">选课</button></td>" + "</tr>";
                        else
                            CourseContent += "<td><button class=\"layui-btn layui-btn-danger cancleBut\">退选</button></td>" + "</tr>";
                        $("#"+tbodyId).append(CourseContent);
                    });
                }
            }
        });
    });

    $("#course1,#course2,#course3,#course4,#course5,#course6").on("click",".selectBut",function () {
        var sno =  ${sessionScope.user.uid};
        var cno = $(this).parent().parent().children("td").eq(0).text();
        var size = $(this).parent().parent().children("td").eq(6).text();
        var score = $(this).parent().parent().children("td").eq(4).text();
        var restScore = $("#restScore").text();
        var selectScore = $("#selectScore").text();
        selectScore = parseInt(selectScore);
        restScore = parseInt(restScore);
        size = parseInt(size);
        score = parseInt(score);
        if(restScore<score)
        {
            alert("学分不足，无法选择");
            return;
        }
        if(size<=0)
        {
            alert("课程没有剩余容量，非常抱歉");
            return;
        }
        $.ajax({
            url:"/student/Course-select",
            type:'post',
            data:{cno:cno,sno:sno},
            success:function (data) {
                showTips(data,350,1.5);
            }
        });
        $.ajax(
            {
                url: "/student/Course-select1",
                type: 'post',
                data: {cno: cno},
                success: function (data) {
                    showTips(data, 350, 1.5);
                }
            });
        $(this).removeClass("layui-btn layui-btn-normal");
        $(this).addClass("layui-btn layui-btn-danger");
        $(this).removeClass("selectBut");
        $(this).addClass("cancleBut");
        $(this).html("退课");
        $(this).parent().parent().children("td").eq(6).html(size-1);
        $("#restScore").html(restScore-score);
        $("#selectScore").html(selectScore+score);
    });
    $("#course1,#course2,#course3,#course4,#course5,#course6").on("click",".cancleBut",function () {
        var sno = ${sessionScope.user.uid};
        var cno = $(this).parent().parent().children("td").eq(0).text();
        var size = $(this).parent().parent().children("td").eq(6).text();
        var score = $(this).parent().parent().children("td").eq(4).text();
        var selectScore = $("#selectScore").text();
        var restScore = $("#restScore").text();
        score = parseInt(score);
        selectSocre = parseInt(selectScore);
        restScore  = parseInt(restScore);
        size = parseInt(size);
        $.ajax({
            url:"/student/Course-cancle",
            type:"post",
            data:{cno:cno,sno:sno},
            success:function (data) {
                showTips(data,350,1.5);
            }
        });
        $.ajax(
            {
                url: "/student/Course-cancle1",
                type: 'post',
                data: {cno: cno},
                success: function (data) {
                    showTips(data, 350, 1.5);
                }
            });
        $(this).removeClass("layui layui-btn-danger");
        $(this).addClass("layui-btn layui-btn-normal");
        $(this).removeClass("cancleBut");
        $(this).addClass("selectBut");
        $(this).html("选课");
        $(this).parent().parent().children("td").eq(6).html(size+1);
        $("#selectScore").html(selectScore-score);
        $("#restScore").html(restScore+score);
    });

</script>
</body>

</html>