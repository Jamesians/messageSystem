package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.AllUser;
import cn.keyblog.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


@Controller
public class changePwd {

    @Resource
    private AllUser allUser;

    /**
     * 转发修改密码页面
     * @return 返回change_password.jsp为登录页面
     */
    @RequestMapping("/change_password")
    public String log(){
        return "change_password";
    }

}

