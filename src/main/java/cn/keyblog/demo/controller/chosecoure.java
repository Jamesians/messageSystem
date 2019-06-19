package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.ChoseCourse;
import cn.keyblog.demo.entity.Chosecourse;
import cn.keyblog.demo.entity.Chosedcourse;
import jdk.nashorn.internal.ir.RuntimeNode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
@RequestMapping("/student")
@Controller
public class chosecoure {
    @Resource
    private ChoseCourse choseCourse;

    @RequestMapping("/chosecourse")
    public String chose()
    {
        return "/student/chosecourse";
    }

    @RequestMapping("/chosecourse-M")
    @ResponseBody
    public List<Chosecourse> all(HttpServletRequest request){
        return choseCourse.all(request.getParameter("sno"));
    }

    @RequestMapping("/chosecourse-N")
    @ResponseBody
    public  List<Chosedcourse> score(HttpServletRequest request){
        return choseCourse.score(request.getParameter("sno"));
    }

}
