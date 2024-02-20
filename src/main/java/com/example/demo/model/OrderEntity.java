package com.example.demo.model;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Orders")
public class OrderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer orderId;
    Date orderDate = new Date();
    Double totalAmount;

    @ManyToOne
    @JoinColumn(name = "userId")
    UserEntity user;

    @ManyToOne
    @JoinColumn(name = "statusId")
    OrderStatusEntity orderStatus;

    @JsonIgnore
    @OneToMany(mappedBy = "order")
    List<OrderDetailEntity> orderDetail;

    @JsonIgnore
    @OneToMany(mappedBy = "orderInfo")
    List<ShippingInfoEntity> shippingInfo;

}
