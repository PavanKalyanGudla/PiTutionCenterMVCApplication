package com.Project.PiTutionCenter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PiTutionCenter.Model.Teacher;

public interface TeacherRepository extends JpaRepository<Teacher,String>{
	public Teacher findByEmail(String email); 
}