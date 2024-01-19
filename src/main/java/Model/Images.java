package Model;

import lombok.*;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Images {
    private int imageId;
    private int productDetailId;
    private String imageUrl;
}
