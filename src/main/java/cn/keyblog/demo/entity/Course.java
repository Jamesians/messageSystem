package cn.keyblog.demo.entity;

public class Course {
    private String id;
    private String number;
    private String cname;
    private String ename;
    private String score;
   private String chour;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getChour() {
        return chour;
    }

    public void setChour(String chour) {
        this.chour = chour;
    }

    public String getLhour() {
        return lhour;
    }

    public void setLhour(String lhour) {
        this.lhour = lhour;
    }

    public String getTchour() {
        return tchour;
    }

    public void setTchour(String tchour) {
        this.tchour = tchour;
    }


    private String lhour;
   private String tchour;

    public String getTlhour() {
        return tlhour;
    }

    public void setTlhour(String tlhour) {
        this.tlhour = tlhour;
    }

    private String tlhour;
}
