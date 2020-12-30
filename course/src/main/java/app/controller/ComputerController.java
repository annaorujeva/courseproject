package app.controller;

import app.domain.Computer;
import app.repository.ComputerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class ComputerController {
    @Autowired
    ComputerRepository computerRepository;

    @GetMapping("/searchpcbyid")
    public String main(@RequestParam(required = false, defaultValue = "") String filter, Model model){
        Iterable<Computer> computers = computerRepository.findAll();
        if (filter!=null && !filter.isEmpty()){
            computers = computerRepository.findByIdPC(filter);
        }
        else {
            computers=computerRepository.findAll();
        }
        model.addAttribute("computers", computers);
        model.addAttribute("filter", filter);
        return "searchpcbyid";
    }


    @PostMapping("/addpc")
    public String add(@RequestParam (required = false, defaultValue = "") String idPC, @RequestParam (required = false, defaultValue = "") String idRoom, Map<String,Object> model){
        Computer newComputer = new Computer(idPC, idRoom);
        computerRepository.save(newComputer);
        Iterable<Computer> computers = computerRepository.findAll();
        model.put("computers", computers);
        return "addpc";
    }

    @GetMapping("/addpc")
    public String login(){
        return "addpc";
    }
}
