package com.example.demo.model;

import java.util.List;

import org.hibernate.annotations.Nationalized;

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
@Table(name = "Product")
public class ProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer productId;
    @Nationalized
    String productName;
    Double productPrice;
    @Nationalized
    String productDescription;
    String productImages;

    @JsonIgnore
    @OneToMany(mappedBy = "product")
    List<ProductDetailEntity> productDetail;

    @ManyToOne
    @JoinColumn(name = "brandId")
    BrandEntity brand;

    @ManyToOne
    @JoinColumn(name = "categoryId")
    CategoryEntity category;

}
