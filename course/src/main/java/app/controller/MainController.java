package app.controller;

import app.repository.ComputerRepository;
import app.repository.ProgramRepository;
import app.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @Autowired
    public UserRepository userRepository;

    @Autowired
    public ComputerRepository computerRepository;

    @Autowired
    public ProgramRepository programRepository;

    @GetMapping("/")
    public String greeting() {
        return "greeting";
    }

    @GetMapping("/main")
    public String main() {
        return "main";
    }

    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @GetMapping("/adminpage")
    public String adminpage() {
        return "adminpage";
    }

    @GetMapping("/reqpage")
    public String reqpage() {
        return "reqpage";
    }

}
