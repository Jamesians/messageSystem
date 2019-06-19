package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.ChoseCourse;
import cn.keyblog.demo.entity.Chosecourse;
import org.springframework.stereotype.Controller;
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
    public  List<Chosecourse> score(HttpServletRequest request){
        return choseCourse.score(request.getParameter("sno"));
    }
    @RequestMapping("/Course-select")
    @ResponseBody
    public  ChoseCourse up1(HttpServletRequest request){
        return choseCourse.update1(request.getParameter("sno"),request.getParameter("cno"));
    }
    @RequestMapping("/Course-cancle")
    @ResponseBody
    public  ChoseCourse up2(HttpServletRequest request){
        return choseCourse.update2(request.getParameter("sno"),request.getParameter("cno"));
    }
    @RequestMapping("/Course-select1")
    @ResponseBody
    public  ChoseCourse up3(HttpServletRequest request){
        return choseCourse.update3(request.getParameter("cno"));
    }
    @RequestMapping("/Course-cancle1")
    @ResponseBody
    public  ChoseCourse up4(HttpServletRequest request){
        return choseCourse.update4(request.getParameter("cno"));
    }
}
