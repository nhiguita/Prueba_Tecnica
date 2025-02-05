package higuita.natalia.pruebatecnica.repository;

import higuita.natalia.pruebatecnica.entity.Field;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FieldRepository extends JpaRepository<Field, Long> {
}
