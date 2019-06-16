package cn.keyblog.demo.controller.student;

import cn.keyblog.demo.dao.GetPlanStudyCourse;
import cn.keyblog.demo.dao.getCourse;
import cn.keyblog.demo.entity.Course;
import cn.keyblog.demo.entity.PlanStudyCourse;
import org.hibernate.validator.constraints.pl.REGON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/student")
public class RequestCourse {
    @Resource
    private getCourse allCourse;
    @Resource
    private GetPlanStudyCourse allStudy;
    /**
     * 处理公共基础课加载信息
     * @param request 参数
     * @return 返回处理信息
     */
    @RequestMapping("/Course-basic")
    @ResponseBody
    public List<Course> Course (HttpServletRequest request) {
        String type = request.getParameter("type");
        String student_id = request.getParameter("sno");
        List<Course> list = allCourse.select(type);
        Map<String,Course> map = new HashMap();
        for(Course c:list)
            map.put(c.getNumber(),c);
        List<PlanStudyCourse> courseSelected = allStudy.select(student_id);
        for(PlanStudyCourse c:courseSelected)
        {
            String cno = c.getCourse_id();
            Course t = map.get(cno);
            if(t!=null)
                t.setFlag("2");
        }
        System.out.println(list.size());
        return list;
    }
    /**
     * 获取课程的学期号
     * @param request 参数
     * @return 学期号
     **/
    @RequestMapping("/Course-AcNumber")
    @ResponseBody
    public Course Seno(HttpServletRequest request) {
        String number = request.getParameter("number");
        return allCourse.selectSeno(number);
    }
    /**
     * 获取已选课程学分
     *
     *
     *
     * */
}
