package Model;

import lombok.*;

import java.util.Date;
@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Categories {
    private int categoryId;
    private String categoryName;
    private Date createAt;
    private Date updateAt;
    private boolean isActive;
}
