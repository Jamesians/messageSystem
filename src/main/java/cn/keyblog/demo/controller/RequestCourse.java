package cn.keyblog.demo.controller;

import cn.keyblog.demo.dao.getCourse;
import cn.keyblog.demo.entity.Course;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class RequestCourse {
    @Resource
    private getCourse allCourse;
    /**
     * 处理公共基础课加载信息
     * @param request 参数
     * @return 返回处理信息
     */
    @RequestMapping("/Course-basic")
    @ResponseBody
    public List<Course> login (HttpServletRequest request) {
        String type = request.getParameter("type");
        return allCourse.select(type);
    }

}
