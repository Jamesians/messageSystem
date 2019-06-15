package cn.keyblog.demo.controller.student;

import cn.keyblog.demo.dao.GetPlanStudyCourse;
import cn.keyblog.demo.dao.getCourse;
import cn.keyblog.demo.entity.Course;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/student")
public class RequestPlanStudyCourse {
    @Resource
    private GetPlanStudyCourse PlanCourse;
    @Resource
    private getCourse allCourse;
    /**
     * 处理选课信息
     * @param request 参数
     */
    @RequestMapping("/Course-select")
    @ResponseBody
    public String Course (HttpServletRequest request) {
        String course_id = request.getParameter("cno");
        String student_id = request.getParameter("sno");
        Course course = allCourse.selectSeno(course_id);
        String semester_id = course.getSemester();
        PlanCourse.insert(course_id,student_id,semester_id);
        return "选课成功";
    }
}