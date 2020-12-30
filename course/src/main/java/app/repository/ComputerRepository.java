package app.repository;

import app.domain.Computer;
import org.springframework.data.repository.CrudRepository;
import java.util.List;


public interface ComputerRepository extends CrudRepository<Computer,Long> {
    List<Computer> findByIdPC(String idPC);
}
