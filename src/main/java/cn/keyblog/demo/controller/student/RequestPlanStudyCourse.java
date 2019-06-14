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
        int course_id = Integer.valueOf(request.getParameter("cno"));
        int studnet_id = Integer.valueOf(request.getParameter("sno"));
        int semester_id = Integer.valueOf(request.getParameter("seno"));
       // System.out.println(course_id);
        PlanCourse.insert(course_id,studnet_id,semester_id);
        return "选课成功";
    }
}
