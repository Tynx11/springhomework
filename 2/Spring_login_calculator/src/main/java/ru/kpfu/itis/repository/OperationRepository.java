package ru.kpfu.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.kpfu.itis.model.Operation;

public interface OperationRepository extends JpaRepository<Operation,Long> {
}
