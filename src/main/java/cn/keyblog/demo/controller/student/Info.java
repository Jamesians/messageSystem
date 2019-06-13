package cn.keyblog.demo.controller.student;

import cn.keyblog.demo.dao.InfoImpl;
import cn.keyblog.demo.entity.InfoMsg;
import cn.keyblog.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/student")
public class Info {

    @Resource
    InfoImpl infoImpl;

    /**
     * 转发个人信息页面
     * @return
     */
    @RequestMapping("info")
    public String info(){
        return "student/info";
    }

    /**
     * 获取当前学生的个人信息
     * @param request
     * @return
     */
    @RequestMapping("/getInfo")
    @ResponseBody
    public InfoMsg getInfo(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        String id = user.getScode();
        return  infoImpl.select(id);
    }

}
