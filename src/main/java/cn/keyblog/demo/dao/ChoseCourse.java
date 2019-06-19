package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.Chosecourse;
import org.apache.ibatis.annotations.*;

import java.util.List;
@Mapper
public interface ChoseCourse {
    @Select("select * from student_course \n"+"where student_course.userid = #{sno} ")
    public List<Chosecourse> all(@Param("sno") String sno);
    //查已经选了的课程
 @Select("select * from student_chose\n"+"where student_chose.student_id = #{sno}")
    public  List<Chosecourse> score(@Param("sno") String sno);

 @Update("update student_chose as a set a.flag = 2 where a.course_id = #{cno} and a.student_id = #{sno}")
    public ChoseCourse update1 (@Param("sno") String sno,@Param("cno") String cno);

 @Update("update student_chose as a set a.flag = 1 where a.course_id = #{cno} and a.student_id = #{sno}")
    public ChoseCourse update2 (@Param("sno") String sno,@Param("cno") String cno);
@Update("update course_class as a set a.rest_num -= 1 where a.course_id = #{cno}")
    public ChoseCourse update3 (@Param("cno") String cno);
@Update("update course_class as a set a.rest_num += 1 where a.course_id = #{cno}")
    public ChoseCourse update4 (@Param("cno") String cno);
   // @Update("update student_chose as a set a.flag = 2 where a.course_id = #{cno} and a.student_id = #{sno}")
    //public ChoseCourse update3 (@Param("cno") String cno);

}
