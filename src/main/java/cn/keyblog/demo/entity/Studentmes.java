package cn.keyblog.demo.entity;

public class Studentmes {
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getScode() {
        return scode;
    }

    public void setScode(String scode) {
        this.scode = scode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public String getEnroll_year() {
        return enroll_year;
    }

    public void setEnroll_year(String enroll_year) {
        this.enroll_year = enroll_year;
    }


    private String id;
    private String scode;
    private String name;
    private String gender;
    private String photo;
    private String class_id;
    private String userpwd;

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    private String ename;
    private String enroll_year;
    private String enrollment_status;

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    private String cname;
}
