package com.example.demo.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Users")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer userId;
    @NotBlank(message = "khong để tróng")
    String userName;
    @NotBlank(message = "khong để tróng")
    String fullName;
    @NotBlank(message = "khong để tróng")
    String passWord;
    @NotBlank(message = "khong để tróng")
    String email;

    @JsonIgnore
    @OneToOne(mappedBy = "user")
    CartEntity cart;

    @JsonIgnore
    @OneToMany(mappedBy = "user")
    List<OrderEntity> order;
}
