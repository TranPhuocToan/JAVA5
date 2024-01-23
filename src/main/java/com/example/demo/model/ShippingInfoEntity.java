package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * ShippingInfo
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "ShippingInfo")
public class ShippingInfoEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer shippingId;
    String shippingName;
    String shippingAddress;
    Number shippingSdt;

    @ManyToOne
    @JoinColumn(name = "orderId")
    OrderEntity order;
}