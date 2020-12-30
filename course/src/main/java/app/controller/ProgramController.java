package app.controller;

import app.domain.Computer;
import app.domain.Program;
import app.repository.ProgramRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class ProgramController {
    @Autowired
    ProgramRepository programRepository;

    @PostMapping("/addprog")
    public String add(@RequestParam String idPC, @RequestParam String programName, @RequestParam String version, @RequestParam String producer, Map<String,Object> model){
        Program newProgram = new Program(idPC, programName, version, producer);
        programRepository.save(newProgram);
        Iterable<Program> programs = programRepository.findAll();
        model.put("programs", programs);
        return "addprog";
    }

    @GetMapping("/searchprog")
    public String searchProgram(@RequestParam(required = false, defaultValue = "") String filter1, @RequestParam(required = false, defaultValue = "") String filter2, Model model){
        Iterable<Program> programs = programRepository.findAll();
        if ((filter1!=null && !filter1.isEmpty())&&(filter2!=null && !filter2.isEmpty())){
            programs = programRepository.findByIdPCAndProgramName(filter1,filter2);
        }
        else {
            programs=programRepository.findAll();
        }
        model.addAttribute("programs", programs);
        model.addAttribute("filter1", filter1);
        model.addAttribute("filter2", filter2);
        return "searchprog";
    }

    @GetMapping("/addprog")
    public String login(){
        return "addprog";
    }


}
