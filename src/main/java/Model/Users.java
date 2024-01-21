package Model;

import java.util.Date;
import lombok.*;
@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Users {
    private String username;
    private String fullName;
    private String phone_number;
    private String google_account_id;
    private String email;
    private String avatar;
    private String create_at;
    private String update_at;
    private boolean isActive;
}
