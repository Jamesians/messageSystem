package cn.keyblog.demo.controller.student;

import cn.keyblog.demo.dao.getStudy;
import cn.keyblog.demo.entity.Study;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/student")
public class RequestStudy {
    @Resource
    private getStudy study;
    /**
     * 返回已选课程信息
     * @param request 参数
     * */
    @RequestMapping("/Course-Study")
    @ResponseBody
    public List<Study> Study(HttpServletRequest request)
    {
        String student_id = request.getParameter("sno");
        return study.myStudy(student_id);
    }


}
