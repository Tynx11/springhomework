package ru.itis.kpfu.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itis.kpfu.forms.UserRegistrationForm;
import ru.itis.kpfu.services.UserService;

import javax.validation.Valid;

@Controller
public class AuthController {

    @Autowired
    public UserService userService;

    @RequestMapping(value="/login")
    public String getLoginPage(@RequestParam(value="error", required=false) Boolean error, Model model) {
        if (Boolean.TRUE.equals(error)) {
            model.addAttribute("error", error);
        }
        return "login";
    }

    @RequestMapping(value="/registration", method=RequestMethod.GET)
    public String getRegistrationPage(Model model) {
        model.addAttribute("userform", new UserRegistrationForm());
        return "registration";
    }

    @RequestMapping(value="/registration", method=RequestMethod.POST)
    public String registerUser(@ModelAttribute("userform") @Valid UserRegistrationForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "registration";
        }
        userService.saveNewUser(form);
        return "redirect:/";
    }
}
