package Repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {
    protected Connection connection;
    public DBConnect()
    {
        try {
            String user = "sa";
            String pass = "123";
            String url = "jdbc:sqlserver://DESKTOP-GPEOHKM:1433;databaseName=SHOE9";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public static void main(String[] args) {
//        DBConnect dbConnect = new DBConnect();
//        if(dbConnect.connection != null){
//            System.out.println("done");
//        }else {
//            System.out.println("not");
//        }
//    }
}
