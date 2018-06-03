package ru.kpfu.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ru.kpfu.itis.model.Operation;
import ru.kpfu.itis.service.CalculatorService;

import javax.validation.Valid;

@Controller
public class CalculatorController {

    @Autowired
    SessionHistory sessionHistory;

    @Autowired
    CalculatorService calculatorService;

    @RequestMapping("/")
    public String showIndexPage(Model model,@RequestParam(value = "divisionByNull", required = false) String error) {
        return calculatorService.doGet(model,error);
    }


    @RequestMapping(value = "calculate", method = RequestMethod.POST)
    public String calculate(@ModelAttribute @Valid Operation operation, BindingResult bindingResult, Model model) {
       return calculatorService.doPost(operation,bindingResult,model);
    }
}
