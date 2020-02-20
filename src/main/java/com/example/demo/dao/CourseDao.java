package com.example.demo.dao;

import com.example.demo.entity.Course;
import com.example.demo.entity.District;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface CourseDao extends CrudRepository<Course, Integer> {

    @Query("select p from Course p where p.student.id = ?1")
    List<Course> findByStudentId(Integer studentId);
}
