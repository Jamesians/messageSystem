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
     * 获取k课程类型为name的所有课程
     * @param name
     * @return
     */
    @Select("select number,cname,score from course,curriculum,category_course where course.number = curriculum.course_id and " +
            "category_course.id = curriculum.category_id and category_course.name=#{name}")
    public List<Course> select(@Param("name") String name);
}
