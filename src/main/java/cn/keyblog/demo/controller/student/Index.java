package cn.keyblog.demo.controller.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Index {

    /**
     * student首页转发
     * @return 返回index.jsp页面
     */
    @RequestMapping("/student/index")
    public String index(){
        return "student/index";
    }

    /**
     * 指定首页
     * @return 返回index.jsp页面
     */
    @RequestMapping("/")
    public String index1(){
        return "student/index";
    }
}
