package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.Study;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface getStudy {

    /**
     *获取已选课程
     * @param student_id
     * @return 返回已选课程信息
     * */
    @Select("select * from mystudy where student_id=#{student_id}")
    public List<Study> myStudy(@Param("student_id")String student_id);

}
