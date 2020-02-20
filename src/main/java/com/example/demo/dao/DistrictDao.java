package com.example.demo.dao;

import com.example.demo.entity.District;
import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface DistrictDao extends CrudRepository<District, Integer> {
}
