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
    private double price;
    private String createAt;
    private String updateAt;
    private boolean isActive;

    public Products(int productId, String model, double price) {
        this.productId = productId;
        this.model = model;
        this.price = price;
    }
}
