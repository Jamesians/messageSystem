package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.AllUser;
import cn.keyblog.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class MainPage {


    @RequestMapping("/")
    public String pag(HttpServletRequest request)
    {
        User user = (User)request.getSession().getAttribute("user");

        if(user.getCode().equals("1"))
            return "student/student_index";
        else
            return "teacher/teacher_index";
    }
}
