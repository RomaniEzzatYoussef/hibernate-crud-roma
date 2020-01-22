package org.romani.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.romani.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.Query;
import java.util.List;

@Controller
public class UserController {

    @RequestMapping(value = "/showSignInPage")
    public String showSignInPage(Model model)
    {
        model.addAttribute("user" , new User());
        return "sign-in";
    }

    @RequestMapping(value = "/showSignUpPage")
    public String showSignUpPage(Model model)
    {
        model.addAttribute("user" , new User());
        return "sign-up";
    }

    @RequestMapping(value = "/signUp")
    public String signUp(@ModelAttribute("user")User user)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hb-01-one-to-one-uni.cfg.xml")
                .addAnnotatedClass(User.class)
                .buildSessionFactory();

        Session session = sessionFactory.getCurrentSession();

        try {
            session.beginTransaction();
            session.save(user);
            session.getTransaction().commit();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
            sessionFactory.close();
        }

        return "sign-in";
    }

    @RequestMapping(value = "/login")
    public String login(@ModelAttribute("user")User user , Model model)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("hb-01-one-to-one-uni.cfg.xml")
                .addAnnotatedClass(User.class)
                .buildSessionFactory();

        Session session = sessionFactory.getCurrentSession();
        boolean isValidUser = false;
        try {
            session.beginTransaction();
            Query theQuery = session.createQuery("from User u where u.username=:username AND u.password=:password");
            theQuery.setParameter("username", user.getUsername());
            theQuery.setParameter("password", user.getPassword());
            List results = theQuery.getResultList();
            session.getTransaction().commit();

            session = sessionFactory.getCurrentSession();
            session.beginTransaction();
            List<User> u = session.createQuery("from User where username = '" + user.getUsername() + "'").getResultList();
            model.addAttribute("u" , u.get(0));
            session.getTransaction().commit();

            if (results != null && results.size() > 0) {
                isValidUser = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
            sessionFactory.close();
        }
        if (isValidUser) {
            return "home";
        } else {
            model.addAttribute("message", "username or password is wrong!");
            return "sign-in";
        }

    }

}
