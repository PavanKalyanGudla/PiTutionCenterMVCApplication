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

import com.Project.PiTutionCenter.Model.Booked;
import com.Project.PiTutionCenter.Model.Feedback;
import com.Project.PiTutionCenter.Model.Student;
import com.Project.PiTutionCenter.Model.Subject;
import com.Project.PiTutionCenter.Model.Teacher;
import com.Project.PiTutionCenter.Model.TimeTable;
import com.Project.PiTutionCenter.Repository.BookedRepository;
import com.Project.PiTutionCenter.Repository.FeedbackRepository;
import com.Project.PiTutionCenter.Repository.StudentRepository;
import com.Project.PiTutionCenter.Repository.SubjectRepository;
import com.Project.PiTutionCenter.Repository.TeacherRepository;
import com.Project.PiTutionCenter.Repository.TimetableRepository;

@Controller
public class StudentController {
	
	@Autowired
	StudentRepository studentrepo;
	
	Student studentObjectCopy;
	
	@Autowired
	SubjectRepository subjectrepo;
	
	@Autowired
	TimetableRepository timetablerepo;
	
	@Autowired
	TeacherRepository teacherrepo;
	
	@Autowired
	BookedRepository bookedrepo;
	
	@Autowired
	FeedbackRepository feedbackrepo;
	
	@RequestMapping(value="/studentregister")
	public ModelAndView adminregister(@ModelAttribute("a") Student a){
		ModelAndView mv=new ModelAndView();
		String id[]=a.getEmail().split("@");
		a.setId(id[0]);
		Student findByEmail = studentrepo.findByEmail(a.getEmail());
		if(findByEmail == null) {
			Student save = studentrepo.save(a);
			mv.addObject("msg","Registered Success as Student "+a.getName());
		}else {
			mv.addObject("msg","Already Registered");
		}
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/studentlogin")
	public ModelAndView adminlogin(@RequestParam("email") String email,@RequestParam("pswd")String pswd){
		System.out.println(email+" "+pswd);
		Student c = studentrepo.findByEmail(email);
		ModelAndView mv=new ModelAndView();
		if(c !=null) {
			if(email.equals(c.getEmail()) && (pswd.equals(c.getPswd()))) {
				try {
					studentObjectCopy=c;
					mv.addObject("studentObjectCopy",c);
				}catch(Exception e) {
				}
				mv.setViewName("student_after_login");
			}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Invalid credentials");
			}
		}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Not Register");
			}
		List<Student> students = studentrepo.findAll();
		List<Subject> subjects = subjectrepo.findAll();
		List<Teacher> teachers = teacherrepo.findAll();
		List<TimeTable> timetable = timetablerepo.findAll();
		List<Booked> booked = bookedrepo.findAll();
		mv.addObject("students", students);
		mv.addObject("subjects", subjects);
		mv.addObject("teachers", teachers);
		mv.addObject("timetable", timetable);
		mv.addObject("booked", booked);
		return mv;
	}
	
	@RequestMapping(value="/studentLogout",method=RequestMethod.GET)
	public ModelAndView teacherlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("msg","Successfully Logged out");
		return mv;
	}
	
	@RequestMapping(value="/feedback",method=RequestMethod.POST)
	public ModelAndView feedback(@RequestParam(value ="feedback") String feedback) {
		System.out.println(feedback+" "+studentObjectCopy.getName());
		Feedback f = new Feedback();
		f.setSid(studentObjectCopy.getId());
		f.setRating(feedback);
		feedbackrepo.save(f);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("msg","Successfully Logged out");
		return mv;
	}

	
	@RequestMapping(value="/bookCourse")
	public ModelAndView bookPhysician(@RequestParam(value ="sid") String sid,@RequestParam(value ="sname") String sname,@RequestParam(value ="email") String email,@RequestParam(value ="date") String date,@RequestParam(value ="teacher") String teacher,@RequestParam(value ="slot") String slot,@RequestParam(value ="subject") String subject) {
		ModelAndView mv = new ModelAndView();
		Teacher t=teacherrepo.findByEmail(teacher);
		Optional<TimeTable> findById = timetablerepo.findById(date);
		if(findById.isPresent()) {
			TimeTable tt =findById.get();
			if(tt.getDate().equalsIgnoreCase(date)) {
				Booked b =new Booked();
				b.setSid(sid);
				b.setSname(sname);
				b.setEmail(email);
				b.setDate(date);
				b.setTeacherid(t.getId());
				b.setTeachername(t.getName());
				Optional<Subject> course = subjectrepo.findById(subject);
				String coursename=course.get().getName();
				System.out.println(coursename);
				b.setCourse(coursename);
				b.setPayment("NOT DONE");
						switch(slot) {
						case "1":
							System.out.println("1");
							if(tt.getSlot1().equalsIgnoreCase("Booked")){
//										mv.addObject("booked", "Slot1 on this "+tt.getDate()+" already booked");
								   }else {
									   tt.setSlot1("Booked");
									   b.setSlot("slot1");
									   timetablerepo.save(tt);
									   bookedrepo.save(b);
								   }
							break;
						case "2":
							System.out.println("2");
							if(tt.getSlot2().equalsIgnoreCase("Booked")){
//										mv.addObject("booked", "Slot2 on this "+t.getDate()+" already booked");
								   }else {
									   tt.setSlot2("Booked");
									   b.setSlot("slot2");
									   timetablerepo.save(tt);
									   bookedrepo.save(b);
								   }
							break;
						case "3":
							System.out.println("3");
							if(tt.getSlot3().equalsIgnoreCase("Booked")){
//										mv.addObject("booked", "Slot3 on this "+t.getDate()+" already booked");
								   }else {
									   tt.setSlot3("Booked");
									   b.setSlot("slot3");
									   timetablerepo.save(tt);
									   bookedrepo.save(b);
								   }
							break;
						case "4":
							System.out.println("4");
							if(tt.getSlot4().equalsIgnoreCase("Booked")){
//										mv.addObject("booked", "Slot4 on this "+t.getDate()+" already booked");
								   }else {
									   tt.setSlot4("Booked");
									   b.setSlot("slot4");
									   timetablerepo.save(tt);
									   bookedrepo.save(b);
								   }
							break;
						}
			}
		}
		mv.setViewName("student_after_login");
		Student c = studentrepo.findByEmail(email);
		mv.addObject("studentObjectCopy",c);
		List<Student> students = studentrepo.findAll();
		List<Subject> subjects = subjectrepo.findAll();
		List<Teacher> teachers = teacherrepo.findAll();
		List<TimeTable> timetable = timetablerepo.findAll();
		List<Booked> booked = bookedrepo.findAll();
		mv.addObject("students", students);
		mv.addObject("subjects", subjects);
		mv.addObject("teachers", teachers);
		mv.addObject("timetable", timetable);
		mv.addObject("booked", booked);
		return mv;
	}

}
