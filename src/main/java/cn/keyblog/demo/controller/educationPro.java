package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.Education_program;
import cn.keyblog.demo.entity.Educationpro;
import cn.keyblog.demo.entity.curriculum;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class educationPro {
    @Resource
    private  Education_program education_program;

    @RequestMapping("/student/Educationpro")
    public String pro()
    {
        return "/student/education_pro";
    }

    @RequestMapping("/student/Educationpro-M")
    @ResponseBody
    public Educationpro pro1(HttpServletRequest request)
    {
        return education_program.select(request.getParameter("sno"));
    }

    @RequestMapping("/student/Educationpro-N")
    @ResponseBody
    protected List<curriculum> pro2(HttpServletRequest request)
    {
        return education_program.select1(request.getParameter("sno"));
    }

}
