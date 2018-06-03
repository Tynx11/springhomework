package ru.kpfu.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ru.kpfu.itis.form.UserRegistrationForm;
import ru.kpfu.itis.model.User;
import ru.kpfu.itis.service.UserService;
import ru.kpfu.itis.util.Transformer;

import javax.validation.Valid;

@Controller
public class AuthController {

    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String getLoginPage(@RequestParam(value = "success", required = false) Boolean success,
                               @RequestParam(value = "error", required = false) Boolean error,
                               Model model) {
        if(Boolean.TRUE.equals(error)){
            model.addAttribute("error",error);
        }
        if(Boolean.TRUE.equals(success)) {
            model.addAttribute("success", success);
        }
        return "login1";
    }

    @RequestMapping("/registration")
    public String getRegistrationPage(Model model) {
        model.addAttribute("userForm", new UserRegistrationForm());
        return "registration";
    }

    @RequestMapping(value = "/reg_process", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") @Valid UserRegistrationForm userForm, BindingResult result,Model model) {
        if (result.hasErrors()) {
            return "registration";
        }

        User user = Transformer.transform(userForm);
        userService.saveUser(user);

        model.addAttribute("success", true);
        return "redirect:/login";
    }


}
