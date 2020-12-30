package app.domain;

import org.springframework.stereotype.Component;


import javax.persistence.Embeddable;
import java.io.Serializable;

@Component
@Embeddable
public class ProgramKey implements Serializable {

    private String idPC;

    private String programName;

    public ProgramKey() {
    }

    public ProgramKey(String idPC, String programName) {
        this.idPC = idPC;
        this.programName = programName;
    }

    public String getIdPC() {
        return idPC;
    }

    public void setIdPC(String idPC) {
        this.idPC = idPC;
    }

    public String getProgramName() {
        return programName;
    }

    public void setProgramName(String programName) {
        this.programName = programName;
    }
}
