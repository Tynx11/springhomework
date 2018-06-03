package ru.kpfu.itis.model;

import org.hibernate.validator.constraints.ScriptAssert;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
public class Operation {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Pattern(regexp = "^[0-9]*[.]?[0-9]+$",message = "Введены некорректные данные")
    private String digit;

    private Character mathAction;

    @ManyToOne
    private User user;

    public Operation(){}

    public Operation(String digit, Character mathAction) {
        this.digit = digit;
        this.mathAction = mathAction;
    }

    public Operation(String digit, Character mathAction, User user) {
        this.digit = digit;
        this.mathAction = mathAction;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getDigit() {
        return digit;
    }

    public void setDigit(String digit) {
        this.digit = digit;
    }

    public Character getMathAction() {
        return mathAction;
    }

    public void setMathAction(Character mathAction) {
        this.mathAction = mathAction;
    }
}
