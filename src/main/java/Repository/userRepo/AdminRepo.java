package Repository.userRepo;

import Model.Users;
import Repository.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdminRepo extends DBConnect implements IAdminRepo {
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
            newuser.setPhone_number(rs.getString("phone_number"));
            newuser.setGoogle_account_id(rs.getString("google_account_id"));
            newuser.setEmail(rs.getString("email"));
            newuser.setAvatar(rs.getString("avatar"));
            newuser.setCreate_at(rs.getString("create_at"));
            newuser.setUpdate_at(rs.getString("update_at"));
            newuser.setActive(rs.getBoolean("isActive"));
            listUsers.add(newuser);
        }

        return listUsers;
    }

    @Override
    public Users FindUserByUsername(String username) throws SQLException {
        Statement stmt = connection.createStatement();
        String sql = "SELECT * FROM Users WHERE username = '" + username + "';";
        ResultSet rs = stmt.executeQuery(sql);
        Users newuser = new Users();
        while (rs.next()) {
            newuser.setUsername(rs.getString("username"));
            newuser.setFullName(rs.getString("fullname"));
            newuser.setPhone_number(rs.getString("phone_number"));
            newuser.setGoogle_account_id(rs.getString("google_account_id"));
            newuser.setEmail(rs.getString("email"));
            newuser.setAvatar(rs.getString("avatar"));
            newuser.setCreate_at(rs.getString("create_at"));
            newuser.setUpdate_at(rs.getString("update_at"));
            newuser.setActive(rs.getBoolean("isActive"));
        }
        return newuser;
    }

    @Override
    public void UpdateUser(Users user) throws SQLException {
//        Statement stmt = connection.createStatement();
//        String sql = "UPDATE Users\n" +
//                     "SET fullname = '" +   user.getFullName()     + "'" +
//                     ", dob = '" +          user.getDob()          + "'" +
//                     ", gender = '" +       user.getGender()       + "'" +
//                     ", phone_number = '" + user.getPhone_number() + "'" +
//                     ", google_account_id = '" + user.getPhone_number() + "'" +
//                     ", email = '" +        user.getEmail()        + "'" +
//                     ", avatar = '" +        user.getAvatar()        + "'" +
//                     ", create_at = '" +        user.getCreate_at()        + "'" +
//                     ", update_at = '" +        user.getUpdate_at()        + "'" +
//                     ", isActive = '" +     user.isActive()        + "'" +
//                     "WHERE username = '" + user.getUsername()     + "';";
//        //stmt.executeQuery(sql);
//        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
//            preparedStatement.executeUpdate();
//        }
        String sql = "UPDATE [dbo].[Users]\n" +
                "   SET [fullname] = ?\n" +
                "      ,[phone_number] = ?\n" +
                "      ,[google_account_id] = ?\n" +
                "      ,[email] = ?\n" +
                "      ,[avatar] = ?\n" +
                "      ,[create_at] = ?\n" +
                "      ,[update_at] = ?\n" +
                "      ,[isActive] = ?\n" +
                " WHERE username = ? ;";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, user.getFullName());
        preparedStatement.setString(2, user.getPhone_number());
        preparedStatement.setString(3, user.getGoogle_account_id());
        preparedStatement.setString(4, user.getEmail());
        preparedStatement.setString(5, user.getAvatar());
        preparedStatement.setString(6, user.getCreate_at());
        preparedStatement.setString(7, user.getUpdate_at());
        preparedStatement.setString(8, String.valueOf(user.isActive()));
        preparedStatement.setString(9,user.getUsername());
        System.out.println(user.getFullName());
        preparedStatement.executeUpdate();
    }
        @Override
        public List<Users> FindUsers(String username) throws SQLException {
            Statement stmt = connection.createStatement();
            String sql = "SELECT * FROM Users WHERE username LIKE '%" + username + "%';";
            ResultSet rs = stmt.executeQuery(sql);

            List listUsers = new ArrayList();
            while (rs.next()) {
                Users newuser = new Users();
                newuser.setUsername(rs.getString("username"));
                newuser.setFullName(rs.getString("fullname"));
                newuser.setPhone_number(rs.getString("phone_number"));
                newuser.setGoogle_account_id(rs.getString("google_account_id"));
                newuser.setEmail(rs.getString("email"));
                newuser.setAvatar(rs.getString("avatar"));
                newuser.setCreate_at(rs.getString("create_at"));
                newuser.setUpdate_at(rs.getString("update_at"));
                newuser.setActive(rs.getBoolean("isActive"));
                listUsers.add(newuser);
            }

            return listUsers;
        }

//    public static void main(String[] args) throws SQLException, ParseException {
//        AdminRepo userRepo = new AdminRepo();
//        Users a = userRepo.FindUserByUsername("hellohello");
//        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        Date create_at = dateFormat.parse("2024-10-10");
//        a.setCreate_at(create_at);
//        userRepo.UpdateUser(a);
//    }
}
