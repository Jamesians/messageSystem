package cn.keyblog.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class choose_course {
    @RequestMapping("/choose_course")
    public String log(){
        return "/student/choose_course";
    }

}
