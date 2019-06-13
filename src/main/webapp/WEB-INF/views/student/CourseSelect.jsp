<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/11
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!<!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>CourseSelect</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
        <script src="../../../resource/layui/layui.js" type="text/javascript" charset="utf-8"></script>
        <link rel="stylesheet" type="text/css" href="../../../resource/layui/css/layui.css" />
        <link type="text/css" rel="styleSheet" href="../../../resource/css/CourseSelect.css" />
        <style type="text/css">
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

                //…
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
                    <td>30</td>
                    <td>0</td>
                    <td>0</td>
                </tr>
            </tbody>
        </table>
        <div class="search d1">
            <form>
                <input type="text" placeholder="课程名搜索...">
                <button type="submit"></button>
            </form>
        </div>
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" id="main_content">
            <ul class="layui-tab-title">
                <li class="layui-this">公共基础</li>
                <li>学科基础</li>
                <li>专业主干</li>
                <li>专业任选</li>
                <li>公共选修</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <table id="tab1" class="layui-table" text-align="center">
                        <colgroup>
                            <col width="200">
                            <col width="200">
                            <col width="200">
                            <col width="200">
                            <col width="200">
                            <col width="200">
                        </colgroup>
                        <thead id="tableHead">
                            <tr>
                                <th>课程号</th>
                                <th>课程名</th>
                                <th>任课老师</th>
                                <th>学期</th>
                                <th>学分</th>
                                <th>选课</th>
                            </tr>
                        </thead>
                        <tbody id="temp">
                            <%--<tr>--%>
                                <%--<td>1001</td>--%>
                                <%--<td>大学英语（四级）Ⅰ</td>--%>
                                <%--<td>李华</td>--%>
                                <%--<td>大一上</td>--%>
                                <%--<td>3</td>--%>
                                <%--<td><button class="layui-btn layui-btn-normal layui-anim"--%>
                                        <%--data-anim="layui-anim-scaleSpring">未选</button></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td>1002</td>--%>
                                <%--<td>马克思主义基本原理</td>--%>
                                <%--<td>李明</td>--%>
                                <%--<td>大一下</td>--%>
                                <%--<td>4</td>--%>
                                <%--<td><button class="layui-btn layui-btn-normal">未选</button></td>--%>
                            <%--</tr>--%>
                        </tbody>
                    </table>
                </div>
                <div class="layui-tab-item">内容2</div>
                <div class="layui-tab-item">内容3</div>
                <div class="layui-tab-item">内容4</div>
                <div class="layui-tab-item">内容5</div>
            </div>
        </div>

        <script>
            $(document).ready(function(){
                // $.ajax({
                //     url:,
                //     type:'get',
                //     dataType:'json',
                //     data:{},
                //     success:function (data) {
                //
                //
                // })

                $("#temp").append("<tr>\n" +
                "<td>1001</td>\n" +
                "<td>大学英语（四级）Ⅰ</td>\n" +
                "<td>李华</td>\n" +
                "<td>大一上</td>\n" +
                "<td>3</td>\n" +
                "<td><button class=\"layui-btn layui-btn-normal layui-anim\"\n" +
                "data-anim=\"layui-anim-scaleSpring\">未选</button></td>\n" +
                " </tr>")

            })
        </script>
    </body>

    </html>