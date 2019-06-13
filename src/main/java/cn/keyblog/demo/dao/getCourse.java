package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import cn.keyblog.demo.entity.Course;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface getCourse {
    /**
     * 获取k课程类型为type的所有课程
     * @param type
     * @return
     */
    @Select("select number, cname, ename, score, semester from mycourse where name=#{type}")
    public List<Course> select(@Param("type") String type);
}
