package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.Educationpro;
import cn.keyblog.demo.entity.curriculum;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Education_program {
   @Select("select a.name,a.objective,a.specification,a.duration,a.degree,a.min_credit,a.publish_year  from education_program as a,class as b,student as c where a.major_id=b.major_id and b.id=c.class_id and c.scode=#{sno}")
    public Educationpro select(@Param("sno") String sno);
   @Select("select a.name as pname,b.number,b.score,b.cname as cname,c.name as caname,d.semester,d.isdegree,b.chour,b.lhour,b.tchour,b.tlhour from education_program as a,course as b,course_category as c,curriculum as d,student as e ,class where d.program_id=a.id and b.number=d.course_id and d.category_id=c.id and e.scode=#{sno} and e.class_id=class.id and class.major_id=a.major_id")
   public List<curriculum> select1(@Param("sno") String sno);
}

