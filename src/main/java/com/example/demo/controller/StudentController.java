package com.example.demo.controller;

import com.example.demo.dao.CourseDao;
import com.example.demo.dao.DistrictDao;
import com.example.demo.dao.StudentDao;
import com.example.demo.entity.Course;
import com.example.demo.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;



@Controller
public class StudentController {

    @Autowired
    private StudentDao studentDao;
    @Autowired
    private DistrictDao districtDao;
    @Autowired
    private CourseDao courseDao;

    @GetMapping({"/addStudent"})
    public String addStudent(
            HttpServletRequest request,
            Model model,
            @RequestParam(value = "studentId", required = false) Integer studentId) {
        System.out.println("Visited addStudent.....");
        Student student = new Student();

        System.out.println("studentId:" + studentId);

        if (studentId != null) {
            student = studentDao.findById(studentId).get();
        }

        List<Course> courseList = new ArrayList<>();
        courseList.add(new Course("DLD"));
        courseList.add(new Course("C"));
        courseList.add(new Course("C++"));
        courseList.add(new Course("PYTHON"));
        courseList.add(new Course("JAVA"));

        model.addAttribute("districtList", districtDao.findAll());
        model.addAttribute("courseList", courseList);
        model.addAttribute("student", student);
        return "student";
    }

    @PostMapping("/addStudent")
    public String createStudent(@ModelAttribute("student") Student student) {
        System.out.println("I am in post method: " + student.toString());

        MultipartFile file = student.getMultipartFile();

        if (file != null) {
            try {
                file.transferTo(new File("/home/piyal/Downloads/FIRST_SPRING_BOOT_APP_security/FIRST_SPRING_BOOT_APP/src/main/resources/static/assets/images/" + file.getOriginalFilename()));
                student.setStudentPhotoPath("student_image/" + file.getOriginalFilename());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        studentDao.save(student);

//        if (student.getCourseList() != null && student.getCourseList().size() > 0) {
//
//            for (Course c : student.getCourseList()) {
//                c.setStudent(student);
//                courseDao.save(c);
//            }
//        }


        return "redirect:/studentList";
    }

    @GetMapping("/studentList")
    public String studentList(Model model) {
        List<Student> list = (List<Student>) studentDao.findAll();
        model.addAttribute("studentList", list);
        return "studentList";
    }

    @GetMapping("/deleteStudent")
    public String delete(
            HttpServletRequest request,
            @RequestParam("studentId") Integer studentId
    ) {
        System.out.println("Visited DELETE.....");
        System.out.println("studentId:" + studentId);
        System.out.println(request.getSession().getAttribute("dollarRate"));


//        Way-01
//        Optional<Student> student = studentDao.findById(studentId);
//        studentDao.delete(student.get());

        //Way-02
        studentDao.deleteStudent(studentId);
        return "redirect:/studentList";
    }

    @GetMapping("/studentDetails")
    public
    @ResponseBody
    Student studentDetails(
            @RequestParam("studentId") Integer studentId,
            Principal principal
    ) {
        System.out.println("Visited studentDetails(By Ajax).....");
        return studentDao.findById(studentId).get();
    }
}
