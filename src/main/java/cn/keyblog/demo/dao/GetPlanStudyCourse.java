package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.PlanStudyCourse;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Mapper
public interface GetPlanStudyCourse {
    /**
     * 向plan_study_course表插入数据
     * @param course_id
     * @param student_id
     * @param semester_id
     */
    @Insert("insert into  plan_study_course(course_id,student_id,semester_id) values(#{course_id},#{student_id},#{semester_id})")
    public void insert(@Param("course_id")String course_id, @Param("student_id")String student_id,@Param("semester_id")String semester_id);
    /**
     * 查询已选课数据
     * @param student_id
     * return 返回查询数据
     * */
    @Select("select * from plan_study_course where student_id=#{student_id}")
    public List<PlanStudyCourse> select(@Param("student_id")String student_id);
}
