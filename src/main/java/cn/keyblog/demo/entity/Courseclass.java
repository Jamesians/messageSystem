package cn.keyblog.demo.entity;

public class Courseclass {
    private String id;

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    private String semester;
     private String number;
    private String cname;
    private String score;
    private String max_class_size;
    private String rest_num;

    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }

    private String teacher_id;
    private String course_id;
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

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMax_class_size() {
        return max_class_size;
    }

    public void setMax_class_size(String max_class_size) {
        this.max_class_size = max_class_size;
    }

    public String getRest_num() {
        return rest_num;
    }

    public void setRest_num(String rest_num) {
        this.rest_num = rest_num;
    }



}
