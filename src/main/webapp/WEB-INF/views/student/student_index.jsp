<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <title>课程成绩管理系统</title>
    <link rel="stylesheet" href="../../../layui/css/layui.css">
    <style>
        #student_index_p1{
            width:50px;
            height:50px;
            float:right;
            color:white;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">课程成绩管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item">欢迎登录</li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a a target="iframe_a"  href="/student/mes" id="student_index_a1">
<%--                  <img src="../../../images/bg_bc.jpg" class="layui-nav-img" id="student_index_img1">--%>
                    <p id="student_index_p1" align="center" ></p>
                </a>
            </li>
            <li class="layui-nav-item"><a href="">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">我的信息</a>
                    <dl class="layui-nav-child">
                        <dd><a target="iframe_a" href="/student/mes">基本信息</a></dd>
                        <dd><a target="iframe_a" href="change_password">修改密码</a></dd>
                        <dd><a href="">课程成绩</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">公共服务</a>
                    <dl class="layui-nav-child">
                        <dd><a target="iframe_a" href="/student/Educationpro">培养方案</a></dd>
                        <dd><a href="javascript:;">课程信息</a></dd>
                        <dd><a href="">开课安排</a></dd>
                        <dd><a href="">期末考试成绩查询</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">选课系统</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">已选课程</a></dd>
                        <dd><a target="iframe_a" href="/student/chosecourse">选择课程</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">学籍管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">学籍状态</a></dd>
                        <dd><a href="javascript:;">申请休学</a></dd>
                        <dd><a href="javascript:;">申请参军</a></dd>
                        <dd><a href="javascript:;">申请退学</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <iframe src="" name="iframe_a" frameborder="no" width="100%" height="800px" padding="100px">
            </iframe>
        </div>
    </div>

    <div class="layui-footer" align="center">
        <!-- 底部固定区域 -->
        © 江西师范大学  软件学院  移动三班  温鑫斌  版权所有  地址：江西省南昌市紫阳大道99号 邮政编码：330022
    </div>
</div>
<script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
<script src="../../../layui/layui.all.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });

    var uname  = "${sessionScope.user.uname}";
    $("#student_index_p1").text(uname);
    var photo= "${sessionScope.user.photo}";
    var x="<img src="+photo+" class=\"layui-nav-img\" >";
    $("#student_index_a1").append(x);
    /*$(document).ready(function () {
        $.ajax({
            url:"/student/index",
            type:'post',
            data:{

            },
            success:function (data) {
                var photo=data.photo;
                //           <img src="../../../images/bg_bc.jpg" class="layui-nav-img" id="student_index_img1">


                $("#student_index_a1").append(x);

            }

        })
    })*/

</script>

</body>
</html>