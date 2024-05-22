package com.Project.PiTutionCenter.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PiTutionCenter.Model.TimeTable;

public interface TimetableRepository extends JpaRepository<TimeTable,String>{

	public TimeTable findByDate(String date);

	public List<TimeTable> findAllById(String id);
}
