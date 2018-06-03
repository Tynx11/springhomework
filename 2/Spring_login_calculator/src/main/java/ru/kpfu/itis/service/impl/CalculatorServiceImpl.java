package ru.kpfu.itis.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import ru.kpfu.itis.controller.SessionHistory;
import ru.kpfu.itis.model.Operation;
import ru.kpfu.itis.model.User;
import ru.kpfu.itis.repository.OperationRepository;
import ru.kpfu.itis.service.CalculatorService;

@Service
public class CalculatorServiceImpl implements CalculatorService {

    @Autowired
    SessionHistory sessionHistory;

    @Autowired
    OperationRepository operationRepository;

    @Override
    public String doGet(Model model, String error) {
        Operation operation = new Operation();
        model.addAttribute("operation", operation);
        model.addAttribute("divisionByNull", error);

        if (sessionHistory.getPreviousOperation().getDigit() != null) {
            model.addAttribute("history", sessionHistory.getPreviousOperation().getDigit());
        }
        if (sessionHistory.getPreviousOperation().getMathAction() != null && sessionHistory.getPreviousOperation().getMathAction().equals('=')) {
            sessionHistory.setPreviousOperation(new Operation());
        }
        return "calc";
    }

    @Override
    public String doPost(Operation operation, BindingResult bindingResult, Model model) {

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (bindingResult.hasErrors()) {
            return "calc";
        } else {
            if (sessionHistory.getPreviousOperation().getDigit() != null) {
                Double result = count(Double.parseDouble(sessionHistory.getPreviousOperation().getDigit()), Double.parseDouble(operation.getDigit()), sessionHistory.getPreviousOperation().getMathAction());
                if(result == Double.POSITIVE_INFINITY || result == Double.NEGATIVE_INFINITY){
                    model.addAttribute("divisionByNull","На ноль делить нельзя!");
                    return "calc";
                }
                sessionHistory.setPreviousOperation(new Operation(result.toString(), operation.getMathAction()));
            } else {
                sessionHistory.setPreviousOperation(new Operation(operation.getDigit(), operation.getMathAction()));
            }
        }
        operationRepository.save(new Operation(operation.getDigit(), operation.getMathAction(), user));
        return "redirect:/";
    }

    @Override
    public Double count(Double a, Double b, Character mathAction) {

        switch (mathAction) {
            case '+':
                return a + b;
            case '-':
                return a - b;
            case '*':
                return a * b;
            case '/':
                return a / b;
        }
        return 0.0;
    }
}
