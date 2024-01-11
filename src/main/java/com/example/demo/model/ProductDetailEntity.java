package com.example.demo.model;

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
@Table(name = "ProductDetail")
public class ProductDetailEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer productDetailId;
    Integer quantity;

    @ManyToOne
    @JoinColumn(name = "productId")
    ProductEntity product;

    @ManyToOne
    @JoinColumn(name = "sizeId")
    SizeEntity size;

    @ManyToOne
    @JoinColumn(name = "colorId")
    ColorEntity color;

    @JsonIgnore
    @OneToMany(mappedBy = "productDetial")
    List<CartDetailEntity> cartDetail;

    @JsonIgnore
    @OneToMany(mappedBy = "productDetial")
    List<OrderDetailEntity> orderDetail;
}
