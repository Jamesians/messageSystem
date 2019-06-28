<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Select</title>
    <link rel="stylesheet" type="text/css" href="../../../css/CourseStart.css">
    <link rel="stylesheet" type="text/css" href="../../../layui/css/layui.css">

    <style>
        body {
            font-family: Helvetica, san-serif;
            background-color: #fff;
            /*padding: 20px;*/

            margin: 100px 10px 0px 80px;
        }
    </style>
</head>

<body>
<div id="main">
    <div id = "header">
        <div class="select" tabIndex="0" role="listbox">
            <div class="placeholder" id = "wordSele">请选择一门课程</div>
            <div class="options">
                <button class="option" role="option" >
                    离散数学
                </button>
                <button class="option" role="option" >
                    高等数学
                </button>
                <button class="option" role="option" >
                    数据结构
                </button>
                <button class="option" role="option" >
                    Java程序设计
                </button>
            </div>

        </div>
        <div id = "topWord">你所开班的班级</div>
    </div>
    <div id = "content">
        <table class="altrowstable courseStart" id="alternatecolor">
            <tr>
                <th colspan="4">课程信息</th>
            </tr>
            <tr>
                <td >课程号</td>
                <td id = "Cnumber"></td>
                <td>学分</td>
                <td id = "Cscore"></td>
            </tr>
            <tr>
                <td>课程名</td>
                <td id = "Ccname"></td>
                <td>英文名</td>
                <td id = "Cename"></td>
            </tr>
            </tr>
            <tr>
                <td>周理论学时</td>
                <td id = "Cchour"></td>
                <td>周实验学时</td>
                <td id = "Clhour"></td>
            </tr>
            <tr>
                <td>理论总学时</td>
                <td id = "Ctchour"></td>
                <td>实验总学时</td>
                <td id = "Ctlhour"></td>
            </tr>
        </table>
        <table class="layui-table" id = "courseStarted" width="300px">
            <colgroup>
                <col width="50">
                <col width="50">
                <col width="50">
                <col width="50">
                <col width="50">
                <col width="50">
            </colgroup>
            <thead>
            <tr id="head_course">
                <th >课程号</th>
                <th>课程名</th>
                <th>开课学期</th>
                <th>学分</th>
                <th>班级最大容量</th>
                <th>选课人数</th>
            </tr>
            </thead>
            <tbody id = "CourseContent">
            <tr>
                <td>30</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
            </tr>
            </tbody>
        </table>

        <form class="layui-form" action="">
            <div class="layui-form-item" >
                <label class="layui-form-label" id = "numberWord">请选择开课人数</label>
                <div class="layui-input-block" id = "numberSelect">
                    <select name="city" lay-verify="required" id = "options">
                        <option value=""></option>
                        <option value="0">30</option>
                        <option value="1">40</option>
                        <option value="2">50</option>
                        <option value="3">60</option>
                        <option value="4">70</option>
                    </select>
                </div>
                <button type="button" class="layui-btn layui-btn-radius layui-btn-normal layui-anim layui-anim-up"
                        id="courseStart" >开课</button>
            </div>

        </form>
    </div>

</div>


</body>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>

<script src="../../../js/CourseStart.js" type="text/javascript" charset="utf-8"></script>
<script src="../../../layui/layui.all.js" type="text/javascript" charset="utf-8"></script>

<script>
    var semesters = new Array("大一上学期", "大一下学期", "大二上学期", "大二下学期", "大三上学期", "大三下学期", "大四上学期", "大四下学期");
    var id;
    function altRows(id) {
        if (document.getElementsByTagName) {

            var table = document.getElementById(id);
            var rows = table.getElementsByTagName("tr");

            for (i = 0; i < rows.length; i++) {
                if (i % 2 == 0) {
                    rows[i].className = "evenrowcolor";
                } else {
                    rows[i].className = "oddrowcolor";
                }
            }
        }
    }

    window.onload = function () {
        altRows('alternatecolor');
    }
    $(document).ready(function () {
        onloadCourse();
    });
    function onloadCourse(){
        var tno =  ${sessionScope.user.uid };
        $.ajax({
            url:"/teacher/createclass-Start-Cname",
            type:"post",
            dataType:"json",
            data:{tno:tno},
            success:function (data) {
                if(data!=null)
                {
                    // alert(tno);
                    $(".options").empty();
                    $.each(data,function (index,item) {
                        var cname = item.cname;
                        var html =  " <button class=\"option\" role=\"option\">" + cname+ "</button>"
                        $(".options").append(html);
                        //alert(html);
                    })
                }
            }

        })
        $.ajax({
            url:"/teacher/createclass-TC",
            type:"post",
            dataType:"json",
            data:{tno:tno},
            success:function (data) {
                if(data!=null)
                {
                    $("#CourseContent").empty();

                    $.each(data,function (index,item) {
                        var number = item.number;

                        var cname = item.cname;
                        var semester = item.semester;
                        var score = item.score;
                        var max_class_size = item.max_class_size;
                        var selected_size = max_class_size-item.rest_num;
                        semester = semesters[semester-1];
                        var html = "<tr>\n" +
                            "                        <td>"+number+"</td>\n"+
                            "                        <td>"+cname+"</td>\n" +
                            "                        <td>"+semester+"</td>\n" +
                            "                        <td>"+score+"</td>\n" +
                            "                        <td>"+max_class_size+"</td>\n" +
                            "                        <td>"+selected_size+"</td>\n" +
                            "                    </tr>"
                        $("#CourseContent").append(html);
                    })
                }
            }
        })
    }
    $(".options").on("click",".option",function () {
        var cname = $(this).text();
        // alert("123");
        $(".placeholder").text(cname);
        $.ajax({
            url:"/teacher/Course-Start-info",
            type:"post",
            dataType:"json",
            data:{cname:cname},
            success:function (data) {
                for(var key in data)
                {
                    if(key=="id")
                    {
                        id = data[key];
                        continue;
                    }
                    var info = data[key];
                    $("#C"+key).text(info);

                }
            }

        })

    })
    $("#courseStart").click(function () {
        var number = $("#Cnumber").text();
        var num = $('#options option:selected').text();
        //alert(num);
        if(number==""){
            alert("请选择一门课程开课")
            return;
        }
        if(num=="请选择")
        {
            alert("请选择开课人数");
            return;
        }
        var course_id =$("#Cnumber").text();
        var max_class_size = num;
        var teacher_id = '${sessionScope.user.uid}';
        var rest_size = num;
        $.ajax({
            url:'/teacher/Course-Start-Class',
            type:"post",
            data:{id:id,course_id:course_id
                ,max_class_size:max_class_size,teacher_id:teacher_id,rest_num:rest_size},
            success:function (data) {
                alert("成功开课！");
            }
        })
        onloadCourse();

    })
</script>


</html>