package com.Project.PiTutionCenter.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Project.PiTutionCenter.Model.Admin;
import com.Project.PiTutionCenter.Model.Booked;
import com.Project.PiTutionCenter.Model.Feedback;
import com.Project.PiTutionCenter.Model.Student;
import com.Project.PiTutionCenter.Model.Subject;
import com.Project.PiTutionCenter.Model.Teacher;
import com.Project.PiTutionCenter.Model.TimeTable;
import com.Project.PiTutionCenter.Repository.AdminRepository;
import com.Project.PiTutionCenter.Repository.BookedRepository;
import com.Project.PiTutionCenter.Repository.FeedbackRepository;
import com.Project.PiTutionCenter.Repository.StudentRepository;
import com.Project.PiTutionCenter.Repository.SubjectRepository;
import com.Project.PiTutionCenter.Repository.TeacherRepository;
import com.Project.PiTutionCenter.Repository.TimetableRepository;


@Controller
public class AdminController {

	@Autowired
	AdminRepository adminrepo;
	
	@Autowired
	StudentRepository studentrepo;
	
	@Autowired
	TeacherRepository teacherrepo;
	
	@Autowired
	SubjectRepository subjectrepo;
	
	@Autowired
	TimetableRepository timetablerepo;
	
	@Autowired
	FeedbackRepository feedbackrepo;
	
	
	@Autowired
	BookedRepository bookedrepo;
	
	String adminDummyEmail;
	
	@RequestMapping("/home")
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView();         
		mv.setViewName("index");
		mv.addObject("msg","");
		return mv;
	}
	
	@RequestMapping(value="/adminregister")
	public ModelAndView adminregister(@ModelAttribute("a") Admin a){
		ModelAndView mv=new ModelAndView();
		String id[]=a.getEmail().split("@");
		a.setId(id[0]);
//		System.out.println(a);
		Admin findByEmail = adminrepo.findByEmail(a.getEmail());
		if(findByEmail == null) {
			Admin save = adminrepo.save(a);
//			System.out.println(save);
			mv.addObject("msg","Registered Success as Admin "+a.getName());
		}else {
			mv.addObject("msg","Already Registered");
		}
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/adminlogin")
	public ModelAndView adminlogin(@RequestParam("email") String email,@RequestParam("pswd")String pswd){
//		System.out.println(email+" "+pswd);
		Admin c = adminrepo.findByEmail(email);
//		System.out.println(c);
		ModelAndView mv=new ModelAndView();
		if(c !=null) {
			if(email.equals(c.getEmail()) && (pswd.equals(c.getPswd()))) {
				try {
					adminDummyEmail=c.getEmail();
					mv.addObject("adminObj",c);
				}catch(Exception e) {
				}
				mv.setViewName("admin_after_login");
			}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Invalid credentials");
			}
		}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Not Registered");
			}
		List<Student> students = studentrepo.findAll();
		List<Admin> admins = adminrepo.findAll();
		List<Subject> subjects = subjectrepo.findAll();
		List<Teacher> teachers = teacherrepo.findAll();
		List<TimeTable> timetable = timetablerepo.findAll();
		List<Booked> booked = bookedrepo.findAll();
		List<Feedback> feedback = feedbackrepo.findAll();
		mv.addObject("students", students);
		mv.addObject("admins", admins);
		mv.addObject("subjects", subjects);
		mv.addObject("teachers", teachers);
		mv.addObject("timetable", timetable);
		mv.addObject("booked", booked);
		mv.addObject("feedback", feedback);
		return mv;
	}
	

	@RequestMapping(value="/adminLogout",method=RequestMethod.GET)
	public ModelAndView adminlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("msg","Admin Successfully Logged out");
		return mv;
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/deleteSubject")
	public ModelAndView deleteSubject(@RequestParam("id") String id,@RequestParam("email") String email) {
		ModelAndView mv = new ModelAndView();
		Admin c = adminrepo.findByEmail(email);
		Optional<Subject> delsub =subjectrepo.findById(id);
		if(delsub.get().getId().equals(id)) {
			subjectrepo.deleteById(id);
		}
		mv.setViewName("admin_after_login");
		mv.addObject("adminObj",c);
		List<Student> students = studentrepo.findAll();
		List<Admin> admins = adminrepo.findAll();
		List<Subject> subjects = subjectrepo.findAll();
		List<Teacher> teachers = teacherrepo.findAll();
		List<TimeTable> timetable = timetablerepo.findAll();
		List<Booked> booked = bookedrepo.findAll();
		List<Feedback> feedback = feedbackrepo.findAll();
		mv.addObject("students", students);
		mv.addObject("admins", admins);
		mv.addObject("subjects", subjects);
		mv.addObject("teachers", teachers);
		mv.addObject("timetable", timetable);
		mv.addObject("booked", booked);
		mv.addObject("feedback", feedback);
		return mv;
	}

	@RequestMapping(value="/addSubject")
	public ModelAndView addSubject(Subject s) {
		ModelAndView mv = new ModelAndView();
		Admin c = adminrepo.findByEmail(adminDummyEmail);
		Optional<Subject> addsub =subjectrepo.findById(s.getId());
		if(!(addsub.isPresent())) {
			subjectrepo.save(s);
		}
		mv.setViewName("admin_after_login");
		mv.addObject("adminObj",c);
		List<Student> students = studentrepo.findAll();
		List<Admin> admins = adminrepo.findAll();
		List<Subject> subjects = subjectrepo.findAll();
		List<Teacher> teachers = teacherrepo.findAll();
		List<TimeTable> timetable = timetablerepo.findAll();
		List<Booked> booked = bookedrepo.findAll();
		List<Feedback> feedback = feedbackrepo.findAll();
		mv.addObject("students", students);
		mv.addObject("admins", admins);
		mv.addObject("subjects", subjects);
		mv.addObject("teachers", teachers);
		mv.addObject("timetable", timetable);
		mv.addObject("booked", booked);
		mv.addObject("feedback", feedback);
		return mv;
	}
}
