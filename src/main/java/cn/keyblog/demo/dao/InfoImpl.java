package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.InfoMsg;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface InfoImpl {

    @Select("select a.name,a.gender,a.scode,a.photo,b.name as classname,c.name as programname,d.objective  from student a,class b,major c,education_program d\n" +
            "where a.class_id=b.id and b.major_id=c.id and c.id=d.major_id and a.scode=#{id}")
    public InfoMsg select(@Param("id") String id);
}