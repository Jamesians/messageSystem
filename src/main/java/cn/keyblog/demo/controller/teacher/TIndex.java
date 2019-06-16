package cn.keyblog.demo.controller.teacher;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/teacher")
public class TIndex {


    /**
     * 老师首页转发
     * @return
     */
    @RequestMapping("/index")
    public String index(){
        return "teacher/index";
    }
}
