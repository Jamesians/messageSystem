package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.ClassStudent;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface  ClassMsg {

    /**
     * 查询对应班级的人
     * @param class_id 班级id
     * @return 返回列表
     */
    @Select("select scode,name,photo,gender from student where class_id=#{class_id}")
    public List<ClassStudent> getClassStudent(@Param("class_id") String class_id);
}
