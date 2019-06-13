package cn.keyblog.demo.controller.student;

import cn.keyblog.demo.dao.ClassMsg;
import cn.keyblog.demo.entity.ClassStudent;
import cn.keyblog.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/student")
public class Class {

    @Resource
    ClassMsg classMsg;

    @RequestMapping("/class")
    public String myClass(){
        return "/student/class";
    }

    @RequestMapping("/classStudent")
    @ResponseBody
    public List<ClassStudent> classAll(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        String class_id = user.getClass_id();
        return classMsg.getClassStudent(class_id);
    }
}
