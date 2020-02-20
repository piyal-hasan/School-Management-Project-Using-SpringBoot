package com.example.demo.entity;

import javax.persistence.*;

@Entity
@Table(name="skills")
public class Skills {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String skill_name;
    private double skill_percent;

    public Skills() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSkill_name() {
        return skill_name;
    }

    public void setSkill_name(String skill_name) {
        this.skill_name = skill_name;
    }

    public double getSkill_percent() {
        return skill_percent;
    }

    public void setSkill_percent(double skill_percent) {
        this.skill_percent = skill_percent;
    }

    @Override
    public String toString() {
        return "Skills{" +
                "id=" + id +
                ", skill_name='" + skill_name + '\'' +
                ", skill_percent=" + skill_percent +
                '}';
    }
}
