package cn.keyblog.demo.controller.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/student")
public class CourseSelect {

    /***
     * 转发课程选择页面
     * @return 转发
     */
    @RequestMapping("/CourseSelect")
    public String courseSelect(){
        return "student/CourseSelect";
    }


    @RequestMapping("/11")
    public String courseSelect1(){
        return "123";
    }
}
