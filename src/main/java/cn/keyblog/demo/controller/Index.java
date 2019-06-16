package cn.keyblog.demo.controller;

import cn.keyblog.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class Index {
    /**
     * 指定首页
     * @return 返回index.jsp页面
     */
    @RequestMapping("/")
    public String index(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if(user.getCode().equals("1"))
            return "student/index";
        else
            return "teacher/index";
    }
}
