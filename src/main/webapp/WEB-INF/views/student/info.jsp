<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
    <title></title>
    <style type="text/css">
      table{
        font-family:Georgia,serif;
        font-style:normal;
        font-size:20px;
        border: 1px solid #e6e6e6;
        margin: auto;
        margin-top:40px; /*上右下左*/
        width:700px;
        text-align:center;
        border-spacing:0px;/*边框无间隙*/
      }
      table th{
        height: 35px;
        font-size:25px;
        padding:10px;
        text-align:center;
        background-color:#16a085;
        color:white;
        border:0;
      }
      table td{
       border:1px solid #e6e6e6;
       padding:10px
      }
      .title{
        margin:0 auto;
        width:100px;
        line-height:30px;
        background-color:#16a085;
        color:white;
      }
      .content{
        width: 360px;
      }
      table img{
        width:240px;
        height:300px;
        padding:0px;
      }
    </style>
  </head>
  <body>
      <table>
        <tr>
          <th colspan="3">学生信息</th>
        </tr>
        <tr>
          <td class="title">姓名</td>
          <td id="name" class="content"></td>
          <td rowspan="5" colspan="1">
            <img id="photo" src="" alt="">
          </td>
        </tr>
        <tr>
          <td class="title">性别</td>
          <td  id="gender"></td>
        </tr>
        <tr>
          <td class="title">学号</td>
          <td id="scode"></td>
        </tr>
        <tr>
          <td class="title">专业</td>
          <td id="programname" ></td>
        </tr>
        <tr>
          <td class="title">班级</td>
          <td id="classname" ></td>
        </tr>
        <tr>
          <td class="title">培养方案</td>
          <td id="objective" colspan="2"></td>
        </tr>
      </table>
      <script>
        $(document).ready(function () {
            $.ajax({
                url:"/student/getInfo",
                type:'get',
                dataType:'json',
                success:function (data) {
                    $("#name").append(data.name);
                    $("#gender").append(data.gender);
                    $("#scode").append(data.scode);
                    $("#programname").append(data.programname);
                    $("#classname").append(data.classname);
                    $("#objective").append(data.objective);
                    $("#photo").attr("src", data.photo);
                }
            });
        });
      </script>
  </body>
</html>
