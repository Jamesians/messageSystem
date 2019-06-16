package cn.keyblog.demo.controller.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class SIndex {

    /**
     * student首页转发
     * @return 返回index.jsp页面
     */
    @RequestMapping("/index")
    public String index(){
        return "student/index";
    }
}
