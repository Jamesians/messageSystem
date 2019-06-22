package cn.keyblog.demo.dao;

import cn.keyblog.demo.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface AllUser {

    /**
     * 获取字段name为name的学生数据
     * @param name
     * @return
     */
    @Select("select b.photo,b.scode,a.name,a.password,a.username,b.name as uname,a.userid as uid,b.gender,b.photo,b.class_id,code from `user` as a,student as b\n" +
            "where a.userid=b.scode and a.name=#{name} and code='1'")
    public User selectStudent(@Param("name") String name);


    /**
     * 查询学生登录信息
     * @param name
     * @return
     */
    @Select("select b.tcode as scode,a.name,a.password,a.username,b.name as uname,a.userid as uid,b.gender,b.photo,code \n" +
            "from user as a,teacher as b where a.userid=b.tcode and a.name=#{name} and code='2'")
    public User selectTeacher(@Param("name") String name);

    /**
     * 获取user表全部数据
     * @return
     */
    @Select("select id,name,password,username from user")
    public List<User> All();

    /**
     * 向user表插入数据
     * @param id
     * @param name
     * @param password
     * @param username
     */
    @Insert("insert user(id,name,password,username) values(#{id},#{name},#{password},#{username})")
    public void insert(@Param("id")String id,@Param("name") String name,@Param("password")String password,@Param("username")String username);
}
