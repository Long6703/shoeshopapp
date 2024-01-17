package Model;

import lombok.*;

import java.util.Date;
@Data
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Products {
    private int productId;
    private String model;
    private String description;
    private String image;
    private float price;
    private Date createAt;
    private Date updateAt;
    private boolean isActive;

}
