package com.example.demo.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "student")
public class Student {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    private String name;
    private String description;
    private String gender;
    private String email;

    @Column(name = "roll_no")
    private String rollNo;

    @Column(name = "mobile_no")
    private String mobileNo;

    @Column(name = "student_photo_path")
    private String studentPhotoPath;

    @Column(name = "district")
    private String district;

    @Transient
    private List<Course> courseList;

    @Transient
    private MultipartFile multipartFile;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRollNo() {
        return rollNo;
    }

    public void setRollNo(String rollNo) {
        this.rollNo = rollNo;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public MultipartFile getMultipartFile() {
        return multipartFile;
    }

    public void setMultipartFile(MultipartFile multipartFile) {
        this.multipartFile = multipartFile;
    }

    public String getStudentPhotoPath() {
        return studentPhotoPath;
    }

    public void setStudentPhotoPath(String studentPhotoPath) {
        this.studentPhotoPath = studentPhotoPath;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", gender='" + gender + '\'' +
                ", email='" + email + '\'' +
                ", rollNo='" + rollNo + '\'' +
                ", mobileNo='" + mobileNo + '\'' +
                ", studentPhotoPath='" + studentPhotoPath + '\'' +
                ", district='" + district + '\'' +
                ", courseList=" + courseList +
                ", multipartFile=" + multipartFile +
                '}';
    }
}
