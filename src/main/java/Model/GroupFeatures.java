package Model;

import lombok.*;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GroupFeatures {
    private Features features;
    private Groups role;
}
