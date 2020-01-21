package org.romani.controllers;


import org.romani.models.Customer;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    int count = 1;

    // add an initbinder ... to convert trim input strings
    // remove leading and trailing whitespace
    // resolve issue for validation
    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class , stringTrimmerEditor);
    }

    @RequestMapping("/showCustomerForm")
    public String showCustomerForm(Model model) {
        model.addAttribute("customer" , new Customer());
        return "customer-form";
    }

    @RequestMapping("/processCustomerForm")
    public String processCustomerForm(Model model , @Valid @ModelAttribute("customer") Customer customer , BindingResult bindingResult) {

//        System.out.println("last name: |"+ customer.getLastName() +  "|");
        if (bindingResult.hasErrors()){
            model.addAttribute("redirected" , "redirected number: " + count++);
            return "customer-form";
        }
        else
            return "customer-confirmation";
    }
}
