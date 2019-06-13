<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>登录-教务管理系统</title>
  <script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
  <style type="text/css">
  h1, input::-webkit-input-placeholder, button {
    font-family: 'roboto', sans-serif;
    -webkit-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
  }

  h1 {
    height: 70px;
    width: 100%;
    font-size: 20px;
    background: #6a89cc;
    color: white;
    line-height: 150%;
    border-radius: 3px 3px 0 0;
    box-shadow: 0 2px 5px 1px rgba(0, 0, 0, 0.2);
  }

  form {
    box-sizing: border-box;
    width: 260px;
    margin:200px auto;
    box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.3);
    padding-bottom: 10px;
    border-radius: 4px;
  }
  form h1 {
    box-sizing: border-box;
    padding: 20px;
  }

  input {
    margin: 25px 25px;
    font-size: 15px;
    width: 200px;
    display: block;
    border: none;
    padding: 10px 0;
    border-bottom: solid 1px #6a89cc;
    -webkit-transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
    transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
    background: -webkit-linear-gradient(top, rgba(255, 255, 255, 0) 96%,#6a89cc 4%);
    background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 96%, #6a89cc 4%);
    background-position: -200px 0;
    background-size: 200px 100%;
    background-repeat: no-repeat;
    color:#6a89cc;
  }
  input:focus, input:valid {
    box-shadow: none;
    outline: none;
    background-position: 0 0;
  }
  input:focus::-webkit-input-placeholder, input:valid::-webkit-input-placeholder {
    color: #6a89cc;
    font-size: 13px;
    -webkit-transform: translateY(-10px);
            transform: translateY(-10px);
    visibility: visible !important;
  }

  button {
    border: none;
    background: #6a89cc;
    cursor: pointer; /*鼠标变成小手*/
    border-radius: 4px;
    padding: 6px;
    width: 90px;
    color: white;
    margin: 5px 15px 5px 15px; /*上右下左*/
    box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.2);
  }
  button:hover {
    -webkit-transform: translateY(-3px);
            transform: translateY(-3px);
    box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);
  }
  select{
    border:solid 1px 0;
    /*为下拉小箭头留出一点位置，避免被文字覆盖*/
    padding-right:14px;
    width: 200px;
    height:28px;
    align-content: center;
    text-align:center;
    margin:15px 10px 0px 20px;
    font-size: 15px;
    border-radius: 4px;
  }
  option{
    color: #7f8c8d;
    font-size: 15px;
  }

  </style>
      <link rel="stylesheet" href="style.css">
</head>

<body>
  <form>
       <h1>教务管理系统</h1>
       <div>
          <select id="co">
            <option  value ="老师">Teacher</option>
            <option  value ="S "  selected = "selected" >Student</option>
          </select>
       </div>
       <input id="name" placeholder="Username" type="text" required="">
       <input id="password" placeholder="Password" type="password" required="">
       <button class="submit">登陆</button>
       <button class="">注册</button>
  </form>
  <script>
      $(".submit").click(function () {

          if($("#co").val()=='老师'){
              alert('教师页面暂未开通！');
              return false;
          }
          $.ajax({
              url:"/login-M",
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
          return false;
      })
  </script>
</body>

</html>
