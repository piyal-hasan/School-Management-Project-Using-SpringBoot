package com.example.demo.controller;

import com.example.demo.dao.CourseDao;
import com.example.demo.dao.StudentDao;
import com.example.demo.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HomeController {

    @Autowired
    private StudentDao studentDao;
    @Autowired
    private CourseDao courseDao;


    @GetMapping({"/dashboard","/admin/dashboard","/"})
    public String getHome(
            HttpServletRequest request,
            Model model, Principal principal) {
        System.out.println("Visited HOME.....");
        double male = 0;
        double female = 0;
        double others = 0;

        List<Student> studentList = (List<Student>) studentDao.findAll();
        double total = studentList.size();

        for(Student s : studentList){

            if(s.getGender().equalsIgnoreCase("Male")){
                male++;
            }else if(s.getGender().equalsIgnoreCase("Female")){
                female++;
            }else {
                others++;
            }
        }

        model.addAttribute("male", male);
        model.addAttribute("female", female);
        model.addAttribute("others", others);

        if(principal != null){
            model.addAttribute("loggedInUserName", principal.getName());
        }
        return "dashboard";
    }

    @GetMapping({"/fetchStudentReportData"})
    public @ResponseBody
    Map<String, Double> fetchStudentReportData() {
        System.out.println("Visited fetchStudentReportData.....");
        Map<String, Double> map = new HashMap<>();
        double male = 0;
        double female = 0;
        double others = 0;

        List<Student> studentList = (List<Student>) studentDao.findAll();
        double total = studentList.size();

        for(Student s : studentList){

            if(s.getGender().equalsIgnoreCase("Male")){
                male++;
            }else if(s.getGender().equalsIgnoreCase("Female")){
                female++;
            }else {
                others++;
            }
        }

        map.put("male", male);
        map.put("female", female);
        map.put("others", others);
        return map;
    }

    @GetMapping({"/login"})
    public String login(
            Model model) {
        System.out.println("Visited Login.....");
        return "login";
    }



    @GetMapping("/home/student")
    public String viewStudent(Model model,
                              @RequestParam(value = "studentId", required = false) Integer studentId) {
        Student student = new Student();

        System.out.println("studentId:"+studentId);

        if(studentId != null){
            student = studentDao.findById(studentId).get();
        }

        model.addAttribute("std", student);
        return "student";
    }

    @PostMapping("/home/createStudent")
    public String createStudent(@ModelAttribute("std") Student student) {
        System.out.println("I am in post method: "+student.toString());
        studentDao.save(student);
        return "redirect:/studentList";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/accessDenied")
    public String accessDenied(Model model) {

        return "accessDenied";
    }

    @GetMapping("/ajaxTest")
    public @ResponseBody Student ajaxTest(@RequestParam(value = "studentId", required = false) Integer studentId) {
        System.out.println("Visited AJAXTEST.....studentId:"+studentId);
        return studentDao.findById(studentId).get();
    }
}
