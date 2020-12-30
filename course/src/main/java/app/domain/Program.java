package app.domain;

import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.io.Serializable;

@Component
@Entity
@Table(name="PROGRAMS")
@IdClass(ProgramKey.class)
public class Program implements Serializable {

    @Column(nullable = false)
    @Id
    private String idPC;

    @Column(nullable = false)
    @Id
    private String programName;

    @Column(nullable = false)
    private String version;

    @Column(nullable = false)
    private String producer;

    public Program() {
    }

    public Program(String idPC, String programName, String version, String producer) {
        this.idPC = idPC;
        this.programName = programName;
        this.version = version;
        this.producer = producer;
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

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
}
