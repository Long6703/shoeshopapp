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
    private float price;
    private String createAt;
    private String updateAt;
    private boolean isActive;

    public Products(String model, String description, float price, String createAt, String updateAt, boolean isActive) {
        this.model = model;
        this.description = description;
        this.price = price;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.isActive = isActive;
    }
}
