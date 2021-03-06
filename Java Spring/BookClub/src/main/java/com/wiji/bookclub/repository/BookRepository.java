package com.wiji.bookclub.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.wiji.bookclub.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {

	List<Book> findAll();
	
	List<Book> findByBorrowerNull();
	List<Book> findByBorrowerNotNull();
}
