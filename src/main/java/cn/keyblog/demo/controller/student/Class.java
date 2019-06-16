package cn.keyblog.demo.controller.student;

import cn.keyblog.demo.dao.ClassMsg;
import cn.keyblog.demo.entity.ClassStudent;
import cn.keyblog.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/student")
public class Class {

    //加载数据库接口
    @Resource
    ClassMsg classMsg;
    /**
     * 转发学生班级页面
     * @return json
     */
    @RequestMapping("/class")
    public String myClass(){
        return "/student/class";
    }
    /**
     * 转发已选课程界面
     * @return json
     * */
    @RequestMapping("/CourseSelected")
    public String myCourseSelected(){return "/student/CourseSelected";}
    /**
     *显示当前学生对应班级学生
     * @param request
     * @return json
     */
    @RequestMapping("/classStudent")
    @ResponseBody
    public List<ClassStudent> classAll(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        String class_id = user.getClass_id();
        return classMsg.getClassStudent(class_id);
    }

}
