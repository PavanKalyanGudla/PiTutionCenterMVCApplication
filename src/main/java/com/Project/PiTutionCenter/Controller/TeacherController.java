package com.Project.PiTutionCenter.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.Project.PiTutionCenter.Model.Admin;
import com.Project.PiTutionCenter.Model.Student;
import com.Project.PiTutionCenter.Model.Subject;
import com.Project.PiTutionCenter.Model.Teacher;
import com.Project.PiTutionCenter.Model.TimeTable;
import com.Project.PiTutionCenter.Repository.StudentRepository;
import com.Project.PiTutionCenter.Repository.SubjectRepository;
import com.Project.PiTutionCenter.Repository.TeacherRepository;
import com.Project.PiTutionCenter.Repository.TimetableRepository;


@Controller
public class TeacherController {
	
	@Autowired
	TeacherRepository teacherrepo;
	
	@Autowired
	SubjectRepository subjectrepo;
	
	@Autowired
	StudentRepository studentrepo;
	
	@Autowired
	TimetableRepository timetablerepo;
	
	Teacher teacherObjectCopy;
	
	@RequestMapping(value="/teacherregister")
	public ModelAndView teacherregister(@ModelAttribute("a") Teacher a){
		ModelAndView mv=new ModelAndView();
		String id[]=a.getEmail().split("@");
		a.setId(id[0]);
		Teacher findByEmail = teacherrepo.findByEmail(a.getEmail());
		if(findByEmail == null) {
			Teacher save = teacherrepo.save(a);
			mv.addObject("msg","Registered Success as Tutor "+a.getName());
		}else {
			mv.addObject("msg","Already Registered");
		}
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/teacherlogin")
	public ModelAndView teacherlogin(@RequestParam("email") String email,@RequestParam("pswd")String pswd){
		System.out.println(email+" "+pswd);
		Teacher c = teacherrepo.findByEmail(email);
		teacherObjectCopy=c;
		ModelAndView mv=new ModelAndView();
		if(c !=null) {
			if(email.equals(c.getEmail()) && (pswd.equals(c.getPswd()))) {
				try {
					mv.addObject("teacherObj",c);
				}catch(Exception e) {
				}
				mv.setViewName("Teacher_after_login");
			}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Invalid credentials");
			}
		}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Not Registered");
			}
		List<Student> students = studentrepo.findAll();
		List<Subject> subjects = subjectrepo.findAll();
		List<Teacher> teachers = teacherrepo.findAll();
		List<TimeTable> timetable=timetablerepo.findAll();
		mv.addObject("students", students);
		mv.addObject("subjects", subjects);
		mv.addObject("teachers", teachers);
		mv.addObject("timetable", timetable);
		return mv;
	}
	
	@RequestMapping(value="/teacherLogout",method=RequestMethod.GET)
	public ModelAndView teacherlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("msg","Successfully Logged out");
		return mv;
	}
	
	@RequestMapping("/addTimeTable")
	public ModelAndView add(TimeTable a) {
		TimeTable findByDate = timetablerepo.findByDate(a.getDate());
		ModelAndView mv=new ModelAndView();
		if(findByDate == null) {
			a.setId(teacherObjectCopy.getId());
			a.setName(teacherObjectCopy.getName());
//			a.setSubject(subject);
//			a.setDate(date);
			a.setSlot1("N");
			a.setSlot2("N");
			a.setSlot3("N");
			a.setSlot4("N");
			timetablerepo.save(a);
		}else {
			mv.addObject("flag1", "true");
			mv.addObject("msg", "Date Already Added");
		}
		List<Student> students = studentrepo.findAll();
		List<Subject> subjects = subjectrepo.findAll();
		List<Teacher> teachers = teacherrepo.findAll();
		List<TimeTable> timetable=timetablerepo.findAll();
		mv.addObject("teacherObj",teacherObjectCopy);
		mv.addObject("students", students);
		mv.addObject("subjects", subjects);
		mv.addObject("teachers", teachers);
		mv.addObject("timetable", timetable);
		mv.setViewName("Teacher_after_login");
		return mv;
	}
	
	@RequestMapping(value="/delete")
	public ModelAndView delete(@RequestParam("date") String date,@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		timetablerepo.deleteById(date);
		List<Student> students = studentrepo.findAll();
		List<Subject> subjects = subjectrepo.findAll();
		List<Teacher> teachers = teacherrepo.findAll();
		List<TimeTable> timetable=timetablerepo.findAll();
		mv.addObject("teacherObj",teacherObjectCopy);
		mv.addObject("students", students);
		mv.addObject("subjects", subjects);
		mv.addObject("teachers", teachers);
		mv.addObject("timetable", timetable);
		mv.setViewName("Teacher_after_login");
		return mv;
	}
}
