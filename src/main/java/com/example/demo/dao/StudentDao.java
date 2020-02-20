package com.example.demo.dao;

import com.example.demo.entity.Student;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface StudentDao extends CrudRepository<Student, Integer> {

//    @Query("select p from CheckPoint p where p.projectId = ? AND p.enabled IS NOT NULL AND p.enabled = true ORDER BY p.percentage DESC")
//    List<Student> getEnabledCheckPointByProjectId(Integer projectId);
//
//    @Query("select p from CheckPoint p where p.projectId = ?")
//    List<Student> getCheckPointByProjectId(Integer projectId);
//
//    @Query("select p from CheckPoint p where p.projectId = ? AND p.enabled IS NOT NULL AND p.enabled = true AND p.checkPointMet IS NOT NULL AND p.checkPointMet = ? AND p.type = ?")
//    List<Student> getAllCheckpointsByTypeInProject(Integer projectId, boolean checkPointMet, String type);

    @Transactional
    @Modifying
    @Query("delete FROM Student p where p.id = ?1")
    void deleteStudent(Integer studentId);

//    @Query("select p from Student p where p.id = :studentId")
//    Student getStudentById(Integer studentId);
}
