package cn.keyblog.demo.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

@Mapper
public interface GetPlanStudyCourse {
    /**
     * 向plan_study_course表插入数据
     * @param course_id
     * @param student_id
     * @param semester_id
     * @param id
     */
    @Insert("insert into  plan_study_course(id,course_id,student_id,semester_id) values(#{id},#{course_id},#{student_id},#{semester_id})")
    public void insert(@Param("id")String id,@Param("course_id")String course_id, @Param("student_id")String student_id,@Param("semester_id")String semester_id);
}
