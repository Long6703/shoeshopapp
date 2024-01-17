package Repository.userRepo;

import Repository.DBConnect;
import Model.Users;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserListRepoImplement extends DBConnect implements IuserListRepo{
    @Override
    public List<Users> ListUsers() throws SQLException {
        Statement stmt = connection.createStatement();
        String sql = "SELECT * FROM Users";
        ResultSet rs = stmt.executeQuery(sql);

        List listUsers = new ArrayList();
        while (rs.next()) {
            Users newuser = new Users();
            newuser.setUsername(rs.getString("username"));
            newuser.setFullName(rs.getString("fullname"));
            newuser.setDob(rs.getString("dob"));
            newuser.setGender(rs.getString("gender"));
            newuser.setPhone_number(rs.getString("phone_number"));
            newuser.setGoogle_account_id(rs.getString("google_account_id"));
            newuser.setEmail(rs.getString("email"));
            newuser.setAvatar(rs.getString("avatar"));
            newuser.setCreate_at(rs.getDate("create_at"));
            newuser.setUpdate_at(rs.getDate("update_at"));
            newuser.setActive(rs.getBoolean("isActive"));
            listUsers.add(newuser);
        }
        rs.close();
        stmt.close();
        connection.close();

        return listUsers;
    }
//    public static void main(String[] args) throws SQLException {
//        UserListRepoImplement userRepo = new UserListRepoImplement();
//        System.out.println(userRepo.ListUsers().toString());
//    }
}
