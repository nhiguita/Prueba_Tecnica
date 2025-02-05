package higuita.natalia.pruebatecnica.repository;

import higuita.natalia.pruebatecnica.entity.Activity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, Long> {
}
