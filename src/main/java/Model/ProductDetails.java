package Model;

import lombok.*;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductDetails {
    private int productDetailId;
    private int productId;
    private int sizeId;
    private int colorId;
    private int imageId;
    private int stock;
}