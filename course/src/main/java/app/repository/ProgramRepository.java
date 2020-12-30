package app.repository;

import app.domain.Computer;
import app.domain.Program;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface ProgramRepository extends CrudRepository<Program,Long> {
    List<Program> findByIdPCAndProgramName(String idPC, String programName);
}
