package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klu.entity.users;

@Repository
public interface UserRepository extends JpaRepository<users, Long>{
	
	@Query("select name from users u where u.email=:email and u.password=:pass")
	public String loginuser(@Param("email") String email,@Param("pass") String pass);

}
