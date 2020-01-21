package org.romani.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.romani.entities.Student;
import org.romani.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.LinkedHashMap;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController
{

    // need a controller method to show the initial HTML form
    @RequestMapping("/showStudentPage")
    public String showStudentForm(Model model)
    {
        // create session factory
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        // create session
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();

            // retrieve all students
            List<Student> students = session.createQuery("from Student ").getResultList();

            // commit the transaction
            session.getTransaction().commit();

            LinkedHashMap<Integer , String> studentss = new LinkedHashMap<>();

            for (Student student : students) {
                studentss.put(student.getId(), student.getFirstName()+" "+ student.getLastName());
            }

            model.addAttribute("studentss" , studentss);

        } finally {
            sessionFactory.close();
        }

        model.addAttribute("student" , new Student());
        model.addAttribute("user" , new User());
        return "student-page";
    }

    @RequestMapping("/saveStudentForm")
    public String saveStudentForm(@ModelAttribute("student")Student student , Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            session.save(student);
            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();
            List<Student> students = session.createQuery("from Student ").getResultList();
            model.addAttribute("students" , students);
            session.getTransaction().commit();

        } finally {
            sessionFactory.close();
        }

        return "save-student-info";
    }


    @RequestMapping("/selectStudentForm")
    public String selectStudentForm(@ModelAttribute("student")Student student , @ModelAttribute("user")User user , Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            Student s = session.get(Student.class , student.getId());
            model.addAttribute("student" , s);
            session.getTransaction().commit();

        } finally {
            sessionFactory.close();
        }

        return "select-student-info";
    }

    @RequestMapping("/userSelectOptionForm")
    public String userSelectOptionForm(@ModelAttribute("user")User user) {
        return "pass-user-info";
    }

    @RequestMapping("/showUpdateStudentPage")
    public String showUpdateStudentPage(Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            List<Student> students = session.createQuery("from Student ").getResultList();
            model.addAttribute("students" , students);
            session.getTransaction().commit();

        } finally {
            sessionFactory.close();
        }

        return "update-student-info";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent(@RequestParam("studentId")int studentID,  Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            Student student = session.get(Student.class , studentID);
            model.addAttribute("student" , student);
            session.getTransaction().commit();
        } finally {
            sessionFactory.close();
        }

        return "update-student-form";
    }


    @RequestMapping("/updateStudentForm")
    public String updateStudentForm(@ModelAttribute("student")Student student , Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();

            Student s = session.get(Student.class , student.getId());
            s.setFirstName(student.getFirstName());
            s.setLastName(student.getLastName());
            s.setEmail(student.getEmail());

            model.addAttribute("s" , s);
            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();
            List<Student> students = session.createQuery("from Student ").getResultList();
            model.addAttribute("students" , students);
            session.getTransaction().commit();

        } finally {
            sessionFactory.close();
        }

        return "update-student-info";
    }


    @RequestMapping("/updateAllStudentMails")
    public String updateAllStudentMails(@RequestParam(name = "email")String email , Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            session.createQuery("update Student set email = '" + email +"'").executeUpdate();
            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();
            List<Student> students = session.createQuery("from Student ").getResultList();
            model.addAttribute("students" , students);
            session.getTransaction().commit();

        } finally {
            sessionFactory.close();
        }

        return "update-student-info";
    }



    @RequestMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("studentId")int studentID , Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            Student student = session.get(Student.class , studentID);
            session.delete(student);
            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();
            List<Student> students = session.createQuery("from Student ").getResultList();
            model.addAttribute("students" , students);
            session.getTransaction().commit();

        } finally {
            sessionFactory.close();
        }
        return "update-student-info";
    }


    @RequestMapping("/deleteAllStudent")
    public String deleteAllStudent(Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            session.createQuery("delete from Student").executeUpdate();
            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();
            List<Student> students = session.createQuery("from Student ").getResultList();
            model.addAttribute("students" , students);
            session.getTransaction().commit();

        } finally {
            sessionFactory.close();
        }
        return "update-student-info";
    }


    // send param from controller to JSP page
//    @RequestMapping("/test/{param}")
//    public int test(@PathVariable(name = "param") int param , Model model) {
//        model.addAttribute(param);
//        return param;
//    }
}
