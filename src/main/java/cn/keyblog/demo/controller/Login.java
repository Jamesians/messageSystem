package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.AllUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import cn.keyblog.demo.entity.User;

import java.util.List;


@Controller
public class Login {

    @Resource
    private AllUser allUser;

    /**
     * 转发登录页面
     * @return 返回login.jsp为登录页面
     */
    @RequestMapping("/login")
    public String log(){
        return "login1";
    }

    /**
     * 处理登录请求
     * @param request 参数
     * @return 返回处理信息
     */
    @RequestMapping("/login-M")
    @ResponseBody
    public String login (HttpServletRequest request){
        String name = request.getParameter("name");
        String pwd = request.getParameter("password");
        String code = request.getParameter("code");
        if(name==null||pwd==null)   return "";
        User myuser = null;
        if(code.equals("1"))
            myuser = allUser.selectStudent(name);
        else if(code.equals("2"))
            myuser = allUser.selectTeacher(name);
        if(myuser==null){
            return "用户不存在!";
        }else{
            if(pwd.equals(myuser.getPassword())){
                request.getSession().setAttribute("user", myuser);
                return "ok!";
            }else{
                return "密码错误！";
            }
        }
    }

    /**
     * 以json格式返回所有数据
     * @return
     */
    @RequestMapping("/all")
    @ResponseBody
    public List<User> all(){
        return allUser.All();
    }


    /**
     * 注销账号
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    @ResponseBody
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "";
    }
}
