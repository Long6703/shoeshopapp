package Model;
import lombok.*;

import java.util.Date;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Reviews {
    private int reviewId;
    private String username;
    private int productDetailId;
    private int rating;
    private String comment;
    private String reviewDate;
}
