package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.AllUser;
import cn.keyblog.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class student_index {
    @Resource
    private AllUser allUser;
    @RequestMapping("/student/index")
    @ResponseBody
    public User ind(HttpServletRequest request)
    {
        return allUser.selectStudent(request.getParameter("sno"));
    }

}
