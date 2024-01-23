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
import jakarta.validation.constraints.Email;
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
    @NotBlank(message = "User name không thể để tróng !")
    String userName;
    @NotBlank(message = "Full name không thể để tróng !")
    String fullName;
    @NotBlank(message = "Password không thể để tróng !")
    String passWord;
    @Email(message = "Email không đúng định dạng !")
    @NotBlank(message = "Email không thê để trong !")
    String email;
    Boolean userRole;

    @JsonIgnore
    @OneToOne(mappedBy = "user")
    CartEntity cart;

    @JsonIgnore
    @OneToMany(mappedBy = "user")
    List<OrderEntity> order;
}
