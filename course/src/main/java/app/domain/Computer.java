package app.domain;

import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;

@Component
@Entity
@Table(name="computers")
public class Computer implements Serializable {


    @Id
    @Column(nullable = false)
    private String idPC;

    @Column(nullable = false)
    private String idRoom;

    @Transient
    ArrayList<Program> installPrograms = new ArrayList<>();

    public Computer() {
    }

    public Computer(String idPC, String idRoom) {
        this.idPC = idPC;
        this.idRoom = idRoom;
    }

    public Program getProgramAtThisPCByName(String name) {
        for (Program program : this.installPrograms) {
            if (program.getProgramName().equals(name)) {
                return program;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return "Computer{" +
                "id=" + idPC +
                ", id_room=" + idRoom +
                '}';
    }

    public String getIdPC() {
        return idPC;
    }

    public void setIdPC(String idPC) {
        this.idPC = idPC;
    }

    public String getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(String idRoom) {
        this.idRoom = idRoom;
    }

    public ArrayList<Program> getInstallPrograms() {
        return installPrograms;
    }

}
