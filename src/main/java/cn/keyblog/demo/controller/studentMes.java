package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.Student_Mes;
import cn.keyblog.demo.dao.Student_Mes;
import cn.keyblog.demo.entity.Studentmes;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class studentMes {
    @Resource
   private Student_Mes studentmes;

    @RequestMapping("/student/mes")
    public String mes()
    {
        return "/student/student_mes";
    }

    @RequestMapping("/student/mes-M")
    @ResponseBody
    public Studentmes findmes(HttpServletRequest request)
    {
        return studentmes.select(request.getParameter("sno"));//通过学号获得信息
    }

}
