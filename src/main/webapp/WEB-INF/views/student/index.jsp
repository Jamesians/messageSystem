<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/11
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
<link type="text/css" rel="styleSheet"  href="../../../resource/css/sidemenu.css" />
<link type="text/css" rel="styleSheet"  href="../../../resource/css/header.css" />
<script src="../../../resource/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="../../../resource/layui/css/layui.css" />
<head>
    <style type = "text/css">
        body {overflow-x:hidden;}
    </style>
</head>
<body>

<div class = "box_1">
    <header class = "top_header">
        <!-- <img class = "top_menu" src = "img/xiaohui.png" alt="校徽"> -->
        <p class = "top_intro">欢迎登入教务在线系统</p>
        <button id = "top_but" class="layui-btn layui-btn-radius">退出登入</button>
        <p class = "user_name">${sessionScope.user.uname }</p>
        <img class = "top_user_logo" src = "${sessionScope.user.photo }" alt="用户">
    </header>
    <div class = "sidemenu">
        <div class="menu">
            <div class="menuItem uno">1<a target="iframe_a" href="/student/info">个人信息</a></div>
            <div class="menuItem dos">2<a target="iframe_a" href = "/student/CourseSelected">已选课程</a></div>
            <div class="menuItem tres">3<a target="iframe_a" href="/student/CourseSelect">选修课程</a></div>
            <div class="menuItem cuatro">4<a target="iframe_a" href="/student/class">班级人员</a></div>
            <div class="menuItem cinco">5<a target="iframe_a">期末成绩</a></div>
        </div>
    </div>
    <div class = "main_content">
        <iframe class = "t2" src="/student/info" name="iframe_a" frameborder="1" width="100%" height="800px" padding="100px">
        </iframe>
    </div>
</div>
<script>
    $("#top_but").click(function () {
        $.ajax({
            url:"/logout",
            type:"post",
            success:function () {
                window.location.href='/login';
            }
        });
        return false;
    })

    //自适应样式
    $("iframe").height(window.innerHeight-12);
    $(window).resize(function(){
        $("iframe").height(window.innerHeight-12);
    });
    var width=$(window).width();
    if(width<1024){
        $("iframe").contents().find("body").removeClass("font-size-12px").addClass("font-size-14px");
    }else {
        $("iframe").contents().find("body").removeClass("font-size-14px").addClass("font-size-12px");
    }
    $(window).resize(function(){
        width=$(window).width();
        if(width<1024){
            $("iframe").contents().find("body").removeClass("font-size-12px").addClass("font-size-14px");
        }else {
            $("iframe").contents().find("body").removeClass("font-size-14px").addClass("font-size-12px");
        }
    });
</script>
</body>

</html>