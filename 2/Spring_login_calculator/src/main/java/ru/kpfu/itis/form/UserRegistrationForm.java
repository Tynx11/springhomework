package ru.kpfu.itis.form;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.ScriptAssert;

import javax.validation.constraints.Size;


@ScriptAssert(lang = "javascript", script = "_this.repassword.equals(_this.password)", message = "Пароли должны совпадать")
public class UserRegistrationForm {

    @Size(min = 6, max = 15, message = "Логин недопустимой длины")
    private String username;

    @Size(min = 6, max = 15, message = "Пароль недопустимой длины")
    private String password;

    private String repassword;

    @Email(message = "Требуется ввести почту")
    private String email;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
