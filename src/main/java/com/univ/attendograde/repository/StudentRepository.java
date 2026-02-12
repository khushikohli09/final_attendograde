package com.univ.attendograde.repository;

import com.univ.attendograde.entity.Student;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Long> {
	Optional<Student> findByRollNo(String rollNo);
	
}
