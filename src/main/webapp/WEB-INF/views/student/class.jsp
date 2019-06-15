<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>班级</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
    <link type="text/css" rel="styleSheet"  href="../../../resource/css/sidemenu.css" />
    <link type="text/css" rel="styleSheet"  href="../../../resource/css/header.css" />
    <script src="../../../resource/layui/layui.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="../../../resource/layui/css/layui.css" />
    <style>
        .site-doc-icon li{width: 222px;}
        .site-doc-icon li .layui-anim{width: 150px; height: 150px; line-height: 150px; margin: 0 auto 10px; text-align: center; background-color: #009688; cursor: pointer; color: #fff; border-radius: 50%;}
        body{
            margin: 100px 10px 0px 80px;
        }
        * {
            color: black;
            box-sizing: border-box;
        }
        li{
            float : left;
        }
        .main{
            margin: 40px;
        }
        .code{
            text-align: center;
        }
        .photo{
            width: 150px;
            height: 150px;
            line-height: 150px;
            margin: 0 auto 10px;
            text-align: center;
            cursor: pointer;
            border-radius: 50%;
        }
    </style>
</head>
<body>
<div class="main layui-layout layui-layout-admin">


    <div class="layui-tab layui-tab-brief" lay-filter="demoTitle">
        <%--<div class="layui-body layui-tab-content site-demo site-demo-body">--%>

            <div class="layui-tab-item layui-show">
                <div class="layui-main">
                    <div id="LAY_preview">
                        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                            <legend>班级人员</legend>
                        </fieldset>

                        <ul id="class" class="site-doc-icon site-doc-anim">
                            <%--<li>--%>
                                <%--<div class="layui-anim" data-anim="layui-anim-up">从最底部往上滑入</div>--%>
                                <%--<div class="code">layui-anim-up</div>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<div class="layui-anim" data-anim="layui-anim-upbit">微微往上滑入</div>--%>
                                <%--<div class="code">layui-anim-upbit</div>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<div class="layui-anim" data-anim="layui-anim-scale">平滑放大</div>--%>
                                <%--<div class="code">layui-anim-scale</div>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<div class="layui-anim" data-anim="layui-anim-scaleSpring">弹簧式放大</div>--%>
                                <%--<div class="code">layui-anim-scaleSpring</div>--%>
                            <%--</li>--%>
                        </ul>
                    </div>

                </div>
            <%--</div>--%>
        </div>
 </div>

<div id="LAY_democodejs">

</div>
<script>

    function init(){
        layui.use('jquery', function(){
            var $ = layui.$;

            //演示动画
            $('.site-doc-icon .layui-anim').on('click', function(){
                var othis = $(this), anim = othis.data('anim');

                //停止循环
                if(othis.hasClass('layui-anim-loop')){
                    return othis.removeClass(anim);
                }

                othis.removeClass(anim);

                setTimeout(function(){
                    othis.addClass(anim);
                });
                //恢复渐隐
                if(anim === 'layui-anim-fadeout'){
                    setTimeout(function(){
                        othis.removeClass(anim);
                    }, 1300);
                }
            });
        });
    }

    $(document).ready(function () {
        $.ajax({
            url:"/student/classStudent",
            type:'get',
            dataType:'json',
            success:function (data) {
                $("#class").empty();
                $.each(data,function (i,val) {
                    $("#class").append("<li>\n" +
                        "<div class='layui-anim' data-anim='layui-anim-scaleSpring'><img src = '"+ val.photo +"' alt='"+ val.name +"' class='photo'></div>\n" +
                        "<div class=\"code\">"+ val.name + " " + val.gender +"</div>\n" +
                        "</li>");
                });
                init();
            }
        });
    });

    
    
</script>
</div>
</body>
</html>