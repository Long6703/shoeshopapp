package Model;

import lombok.*;

import java.util.Date;
@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Categories {
    private int categoryId;
    private String categoryName;
    private String createAt;
    private String updateAt;
    private boolean isActive;




}
