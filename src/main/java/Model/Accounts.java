package Model;

import lombok.*;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Accounts {
    private String username;
    private String password;
    private String displayName;
    private String token;
}
