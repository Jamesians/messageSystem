package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.AllUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class MainPage {


    @RequestMapping("/")
    public String pag()
    {
        return "mainpag";
    }

}
