package com.example.demo.model;

import io.micrometer.common.lang.NonNull;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
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
    @NotBlank(message = "Vui lòng nhập họ và tên !")
    String shippingName;
    @NotBlank(message = "vui long nhập địa chỉ nhận hàng !")
    String shippingAddress;

    @NotBlank(message = "Vui long nhập số điện thoại !")
    @Size(max = 10, min = 10, message = "Số điện thoại phải 10 số !")
    @Pattern(regexp = "^(0[3|5|7|8|9])+([0-9]{8})", message = "Số điện thoại di động không hợp lệ!")
    String shippingSdt;

    @ManyToOne
    @JoinColumn(name = "orderId")
    OrderEntity order;
}