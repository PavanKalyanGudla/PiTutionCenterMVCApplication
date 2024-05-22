package com.Project.PiTutionCenter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PiTutionCenter.Model.Student;

public interface StudentRepository extends JpaRepository<Student,String>{
	public Student findByEmail(String email); 
}
