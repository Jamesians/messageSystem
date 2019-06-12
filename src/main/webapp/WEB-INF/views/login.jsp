<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/6
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- jQuery 3 -->
    <script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
    <!--页面css-->
    <link rel="stylesheet"type="text/css" href="../../../resource/css/style1.css">
</head>
<body>
<br>
<article>
    <div class="login-box">
        <form class="login-form" action="index.html" method="post">
            <h2>课程成绩管理系统</h2>
            <input class="radio" type="radio" checked name="user" value="学生">学生
            <input class="radio" type="radio" name="user" value="教师">教师
            <input id="name" class="textb" type="text" name="" value="" placeholder="Username">
            <input id="password" class="textb" type="password" name="" value="" placeholder="Password">
            <input class="btn submit" type="button" name="" value="登陆">
            <input class="btn" type="button" name="" value="注册">
        </form>
    </div>

</article>
<script>
    $(".submit").click(function () {
        if($('input[name="user"]:checked').val()=='教师'){
            alert('教师页面暂未开通！');
            return false;
        }
        $.ajax({
            url:"/M-login",
            type:"post",
            data:{name:$("#name").val(),password:$("#password").val()},
            success:function (data) {
                if(data==""||data=="wrong password!"||data=="no users found!"){
                    alert(data);
                }else{
                    window.location.href='/student/index';
                }
            }
        });
    })
</script>
</body>
</html>
