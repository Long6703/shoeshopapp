package Model;

import lombok.*;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Images {
    private int imageId;
    private String imageUrl;
    private int productId;
    private int colorId;
}
