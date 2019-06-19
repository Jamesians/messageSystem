package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.Chosecourse;
import cn.keyblog.demo.entity.Chosedcourse;
import org.apache.ibatis.annotations.*;

import java.util.List;
@Mapper
public interface ChoseCourse {
    @Select("select * from student_course \n"+"where student_course.userid = #{sno}")
    public List<Chosecourse> all(@Param("sno") String sno);
    //查已经选了的课程
 @Select("select * from student_chosed\n"+"where student_chosed.student_id = #{sno}")
    public  List<Chosedcourse> score(@Param("sno") String sno);

 @Insert("insert into student_chosed(studnet_id,course_id,score,semester) values(#{sno},#{cno},#{score},#semester)")
         public  Chosedcourse inser(@Param("sno") String sno);
}
