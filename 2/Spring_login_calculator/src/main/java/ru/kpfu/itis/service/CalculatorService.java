package ru.kpfu.itis.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import ru.kpfu.itis.model.Operation;

@Service
public interface CalculatorService {

    String doGet(Model model,String error);
    String doPost(Operation operation, BindingResult bindingResult, Model model);
    Double count(Double a, Double b, Character mathAction);
}
