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

    public Products(String model, String description, String image, float price, Date createAt, Date updateAt, boolean isActive) {
        this.model = model;
        this.description = description;
        this.image = image;
        this.price = price;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.isActive = isActive;
    }
}
