package com.Project.PiTutionCenter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PiTutionCenter.Model.Admin;

public interface AdminRepository extends JpaRepository<Admin,String>{
	public Admin findByEmail(String email); 
}
