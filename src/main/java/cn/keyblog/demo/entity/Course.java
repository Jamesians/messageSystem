package cn.keyblog.demo.entity;

public class Course {
    private String number;
    private String cname;
    private String ename;
    private String score;
    private String semester;
    private String max_class_size;
    private String teacher_id;
    private String rest_size;
    String flag = "1";

    public String getMax_class_size() {
        return max_class_size;
    }

    public void setMax_class_size(String max_class_size) {
        this.max_class_size = max_class_size;
    }

    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getRest_size() {
        return rest_size;
    }

    public void setRest_size(String rest_size) {
        this.rest_size = rest_size;
    }

    public String getFlag()
    {
        return flag;
    }
    public void setFlag(String flag) {
        this.flag = flag;
    }
    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }
}
