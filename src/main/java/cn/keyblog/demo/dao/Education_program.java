package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.Educationpro;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Education_program {
   @Select("select a.name,a.objective,a.specification,a.duration,a.degree,a.min_credit,a.publish_year  from education_program as a,class as b,student as c where a.major_id=b.major_id and b.id=c.class_id and c.scode=#{sno}")
    public Educationpro select(@Param("sno") String sno);

}

