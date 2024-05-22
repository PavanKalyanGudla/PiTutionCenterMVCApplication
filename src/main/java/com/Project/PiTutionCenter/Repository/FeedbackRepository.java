package com.Project.PiTutionCenter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PiTutionCenter.Model.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback,String>{

}
