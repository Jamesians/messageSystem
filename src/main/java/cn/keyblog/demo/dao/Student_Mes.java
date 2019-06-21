package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.Studentmes;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Student_Mes {
    @Select("select a.name,a.scode,a.gender,a.photo,a.enroll_year,b.name as ename ,c.name as cname from student as a,enrollment_status as b,class as c\n"+" where a.enrollment_status_id=b.id and a.scode = #{sno} and c.id = a.class_id")
    public Studentmes select(@Param("sno") String sno);
}
