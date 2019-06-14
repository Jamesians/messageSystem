package cn.keyblog.demo.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface GetPlanStudyCourse {
    /**
     * 向user表插入数据
     * @param course_id
     * @param student_id
     * @param semester_id
     */
    @Insert(" insert into  plan_study_course(course_id,student_id,semester_id) values(#{course_id}),#{student_id},#{semester_id}")
    public void insert(@Param("course_id")int course_id, @Param("student_id")int student_id,@Param("semester_id")int semester_id);
}
