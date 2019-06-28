package cn.keyblog.demo.controller;


import cn.keyblog.demo.dao.CreateClass;
import cn.keyblog.demo.entity.Course;
import cn.keyblog.demo.entity.Courseclass;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class createclass {
    @Resource
    private CreateClass creatClass;

    @RequestMapping("/teacher/createclass")
    public String create()
    {
        return "/teacher/create_class";
    }

    @RequestMapping("/teacher/createclass-Start-Cname")
    @ResponseBody
    public List<Course> course1(HttpServletRequest request)
    {
        return creatClass.findname(request.getParameter("tno"));
    }

    @RequestMapping("/teacher/createclass-TC")
    @ResponseBody
    public List<Courseclass> class1(HttpServletRequest request)
    {
        return creatClass.findcourse(request.getParameter("tno"));
    }

    @RequestMapping("/teacher/Course-Start-info")
    @ResponseBody
    public Course class2(HttpServletRequest request)
    {
        return creatClass.findmes(request.getParameter("cname"));
    }
    @RequestMapping("/teacher/Course-Start-Class")
    @ResponseBody
    public void class3(HttpServletRequest request)
{
    //id,course_id,max_class_size,teacher_id,rest_num
     creatClass.insert1(request.getParameter("id"),request.getParameter("course_id"),request.getParameter("max_class_size"),request.getParameter("teacher_id"),request.getParameter("rest_num"));
}

}
