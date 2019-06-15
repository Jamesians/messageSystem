package cn.keyblog.demo.controller.student;

import cn.keyblog.demo.dao.GetPlanStudyCourse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/student")
public class RequestPlanStudyCourse {
    private GetPlanStudyCourse PlanCourse;
    /**
     * 处理选课信息
     * @param request 参数
     */
    @RequestMapping("/Course-select")
    @ResponseBody
    public String Course (HttpServletRequest request) {
        String course_id = request.getParameter("cno");
        String student_id = request.getParameter("sno");
        String semester_id = request.getParameter("seno");
        // System.out.println(course_id);
        PlanCourse.insert("1",course_id,student_id,semester_id);
        return "选课成功";
    }
}