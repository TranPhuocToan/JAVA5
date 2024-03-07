package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.UserEntity;
import java.util.List;

/**
 * UserEntityDAO
 */
public interface UserEntityDAO extends JpaRepository<UserEntity, Integer> {
    List<UserEntity> findByUserName(String userName);

    UserEntity getByuserName(String userName);

    List<UserEntity> findByEmail(String email);

}
