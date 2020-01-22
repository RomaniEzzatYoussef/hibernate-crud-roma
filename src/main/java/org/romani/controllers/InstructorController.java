package org.romani.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.romani.entities.Instructor;
import org.romani.entities.InstructorDetail;
import org.romani.entities.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/instructor")
public class InstructorController {

    @RequestMapping("/showInstructorPage")
    public String showInstructorPage(Model model)
    {
        model.addAttribute("instructor" , new Instructor());
        model.addAttribute("instructorDetail" , new InstructorDetail());
        return "instructor-page";
    }

    @RequestMapping("/saveInstructorForm")
    public String saveInstructorForm(@ModelAttribute("instructor") Instructor instructor,
            @ModelAttribute("instructorDetail")InstructorDetail InstructorDetail, Model model) {

        SessionFactory sessionFactory = new Configuration()
                .configure("hb-01-one-to-one-uni.cfg.xml")
                .addAnnotatedClass(Instructor.class)
                .addAnnotatedClass(InstructorDetail.class)
                .buildSessionFactory();

        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            instructor.setInstructorDetail(InstructorDetail);
            session.save(instructor);
            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();
            List<Instructor> instructors = session.createQuery("from Instructor").getResultList();
            model.addAttribute("instructors" , instructors);
            session.getTransaction().commit();

            model.addAttribute("message" , "The instructor "
                    + instructor.getFirstName() + " " + instructor.getLastName()
                    + " saved successful with id :" + instructor.getId());

        } catch (Exception e){
            e.printStackTrace();
        } finally {
            session.close();
            sessionFactory.close();
        }

        return "instructor-info-page";
    }

    @RequestMapping("showUpdateInstructorPage")
    public String showUpdateInstructorPage(@RequestParam("instructorId")int instructorId , Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hb-01-one-to-one-uni.cfg.xml")
                .addAnnotatedClass(Instructor.class)
                .addAnnotatedClass(InstructorDetail.class)
                .buildSessionFactory();

        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            Instructor instructor = session.get(Instructor.class , instructorId);
            InstructorDetail instructorDetail = session.get(InstructorDetail.class, instructorId);
            session.getTransaction().commit();

            model.addAttribute("instructor" , instructor);
            model.addAttribute("instructorDetail" , instructorDetail);


        } finally {
            sessionFactory.close();
        }
        return "instructor-update-form";
    }

    @RequestMapping("updateInstructorForm")
    public String updateInstructorForm(@ModelAttribute("instructor")Instructor instructor ,
                                   @ModelAttribute("instructorDetail") InstructorDetail instructorDetail , Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hb-01-one-to-one-uni.cfg.xml")
                .addAnnotatedClass(Instructor.class)
                .addAnnotatedClass(InstructorDetail.class)
                .buildSessionFactory();

        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();

            Instructor instructorTemp =  session.get(Instructor.class , instructor.getId());
            InstructorDetail instructorDetailTemp =  session.get(InstructorDetail.class , instructor.getId());

            instructorDetailTemp.setYoutubeChannel(instructorDetail.getYoutubeChannel());
            instructorDetailTemp.setHobby(instructorDetail.getHobby());

            instructorTemp.setId(instructor.getId());
            instructorTemp.setFirstName(instructor.getFirstName());
            instructorTemp.setLastName(instructor.getLastName());
            instructorTemp.setEmail(instructor.getEmail());
            instructorTemp.setInstructorDetail(instructorDetail);

            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();

            List<Instructor> instructors = session.createQuery("from Instructor").getResultList();
            model.addAttribute("instructors" , instructors);

            session.getTransaction().commit();

            model.addAttribute("message" , "The instructor "
                    + instructor.getFirstName() + " " + instructor.getLastName()
                    + " updated successful with id :" + instructor.getId());


        } finally {
            sessionFactory.close();
        }
        return "instructor-page";
    }

    @RequestMapping("deleteInstructor")
    public String deleteInstructor(@RequestParam("instructorId")int instructorId, Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hb-01-one-to-one-uni.cfg.xml")
                .addAnnotatedClass(Instructor.class)
                .addAnnotatedClass(InstructorDetail.class)
                .buildSessionFactory();

        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            Instructor instructor = session.get(Instructor.class, instructorId);

            if (instructor != null)
            {
                // cascade deleting will delete associated "instructorDetail" object
                session.delete(instructor);
            }

            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();

            List<Instructor> instructors = session.createQuery("from Instructor").getResultList();
            model.addAttribute("instructors" , instructors);

            session.getTransaction().commit();

            model.addAttribute("message" , "The instructor "
                    + instructor.getFirstName() + " " + instructor.getLastName()
                    + " deleted successful with id :" + instructor.getId());

        } finally {
            sessionFactory.close();
        }
            return "instructor-info-page";
    }


    @RequestMapping("deleteInstructorDetail")
    public String deleteInstructorDetail(@RequestParam("instructorId")int instructorId, Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hb-01-one-to-one-uni.cfg.xml")
                .addAnnotatedClass(Instructor.class)
                .addAnnotatedClass(InstructorDetail.class)
                .buildSessionFactory();

        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            InstructorDetail instructorDetail = session.get(InstructorDetail.class, instructorId);

            if (instructorDetail != null)
            {
                // cascade deleting will delete associated "instructorDetail" object
                session.delete(instructorDetail);
            }

            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();

            List<Instructor> instructors = session.createQuery("from Instructor").getResultList();
            model.addAttribute("instructors" , instructors);

            session.getTransaction().commit();

            model.addAttribute("message" , "The instructor "
                    + " deleted successful with id :" + instructorDetail.getId());

        } finally {
            sessionFactory.close();
        }
        return "instructor-info-page";
    }



}
