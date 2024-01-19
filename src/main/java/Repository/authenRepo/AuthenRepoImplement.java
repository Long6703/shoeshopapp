package Repository.authenRepo;

import Model.Accounts;
import Repository.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthenRepoImplement extends DBConnect implements IAuthenRepo {
    @Override
    public boolean authenticUser(String userName, String password) {
        String sql = "SELECT username "
                + "FROM Accounts "
                + "WHERE username = ? "
                + "AND password = ?";
        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, userName);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Accounts getAccountByUserName(String userName) {
        String query = "SELECT * FROM Accounts WHERE Account = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, userName);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                String password = rs.getString("password");
                String displayName = rs.getString("displayName");
                String token = rs.getString("token");
                return new Accounts(userName, password,displayName, token);
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return null;
    }

    @Override
    public void createAccount(Accounts accounts) {
        String query = "INSERT INTO Accounts (username, password) VALUES (?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, accounts.getUsername());
            statement.setString(2, accounts.getPassword());
            statement.execute();
        } catch (SQLException ex) {
            ex.getMessage();
        }
    }
}
