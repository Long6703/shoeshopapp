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
    private Date createAt;
    private Date updateAt;
    private boolean isActive;

    public Categories(String categoryName, Date createAt, Date updateAt, boolean isActive) {
        this.categoryName = categoryName;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.isActive = isActive;
    }


}
