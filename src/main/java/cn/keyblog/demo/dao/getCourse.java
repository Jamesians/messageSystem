package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.Course;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface getCourse {

    /**
     * 获取k课程类型为type的所有课程
     * @param type
     * @return 课程信息
     */
    @Select("select number,cname,ename,score,semester from mycourse where name=#{name};")
    public List<Course> select(@Param(value="name") String type);

    /**
    * 获取课程的semester_id
    *@param number
    * @return 学期号
    * */
    @Select("select number,cname,ename,score,semester from mycourse where number=#{number}")
    public Course selectSeno(@Param("number")String number);

}
