package cn.keyblog.demo.entity;

public class Chosecourse {
    private String userid;
    private String number;
    private String cname;
    private String ename;
    private String score;
    private String max_class_size;
    private String rest_num;
    private String flag;
    private String rest_score;
    private String semester;
    public String getRest_score() {
        return rest_score;
    }

    public void setRest_score(String rest_score) {
        this.rest_score = rest_score;
    }


    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }


    public String getScode() {
        return userid;
    }

    public void setScode(String scode) {
        this.userid = scode;
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

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }


}
