package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.Course;
import cn.keyblog.demo.entity.Courseclass;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CreateClass {
  /*  @Insert("insert course_class(id,semester_id,course_id,max_class_size,teacher_id,rest_num) values(#{id},#{semester_id},#{course_id},#{max_class_size},#{teacher_id},#{rest_num}) ")
    public void insert(@Param("id") String id,@Param("semester_id") String semester_id,@Param("course_id") String course_id,@Param("max_class_size") String max_class_size,@Param("teacher_id") String teacher_id,@Param("rest_num") String rest_num );*/

     @Select("select * from course where course.number not in (select course_id from course_class where teacher_id=#{tno})")
    public List<Course> findname(@Param("tno") String tno);

     @Select("select b.number as number,b.cname as cname,b.score as score,a.max_class_size as max_class_size,a.rest_num as rest_num ,c.name as semester from course_class as a,course as b,semester as c where a.teacher_id=#{tno} and b.number=a.course_id and a.semester_id=c.id")
    public List<Courseclass> findcourse(@Param("tno") String tno);

     @Select("select * from course where course.cname = #{cname}")
    public Course findmes(@Param("cname") String cname);

     //    @Insert("insert user(id,name,password,username) values(#{id},#{name},#{password},#{username})")
  @Insert("insert into course_class(id,course_id,max_class_size,teacher_id,rest_num) values(#{id},#{course_id},#{max_class_size},#{teacher_id},#{rest_num})")
    public void insert1(@Param("id") String id,@Param("course_id") String course_id,@Param("max_class_size") String max_class_size,@Param("teacher_id") String teacher_id, @Param("rest_num") String rest_num );

}
