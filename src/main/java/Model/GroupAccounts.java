package Model;

import lombok.*;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GroupAccounts {
    private Groups role;
    private Accounts accounts;
}
