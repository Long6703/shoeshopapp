package Repository.productRepo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import Model.*;
import Repository.DBConnect;
public class productRepoForAdminImplement extends DBConnect implements IproductRepoForAdmin {

    @Override
    public List<Products> getAllProductsForAdmin() {
        List<Products> list = new ArrayList<>();
        try {
            String sql = "SELECT [product_id]\n" +
                    "      ,[model]\n" +
                    "      ,[description]\n" +
                    "      ,[price]\n" +
                    "      ,[create_at]\n" +
                    "      ,[update_at]\n" +
                    "      ,[isActive]\n" +
                    "  FROM [dbo].[Products]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7)));
            }
            return list;
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean deleteProById(int id) {
        try {
            String sql = "\n" +
                    "DELETE FROM [dbo].[Products]\n" +
                    "      WHERE [dbo].[Products].product_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            int rs = stm.executeUpdate();
            if (rs > 0) return true;
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteProByName(String name) {
        try {
            String sql = "DELETE FROM [dbo].[Products]\n" +
                    "      WHERE [dbo].[Products].model = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            int rs = stm.executeUpdate();
            if (rs > 0) return true;
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateProduct(Products products, int id) {
        try {
            String sql = "UPDATE [dbo].[Products]\n" +
                    "   SET [model] = ?\n" +
                    "      ,[description] = ?\n" +
                    "      ,[price] = ?\n" +
                    "      ,[create_at] = ?\n" +
                    "      ,[update_at] = ?\n" +
                    "      ,[isActive] = ?\n" +
                    " WHERE Products.[product_id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, products.getModel());
            stm.setString(2, products.getDescription());
            stm.setDouble(3, products.getPrice());
            stm.setString(4, products.getCreateAt());
            stm.setString(5, products.getUpdateAt());
            stm.setBoolean(6, products.isActive());
            stm.setInt(7, id);
            int rs = stm.executeUpdate();
            if (rs > 0) return true;
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean createProduct(Products products) {
        try{
            String sql = "INSERT INTO [dbo].[Products]\n" +
                    "           ([model]\n" +
                    "           ,[description]\n" +
                    "           ,[price]\n" +
                    "           ,[create_at]\n" +
                    "           ,[update_at]\n" +
                    "           ,[isActive])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, products.getModel());
            stm.setString(2, products.getDescription());
            stm.setDouble(3, products.getPrice());
            stm.setString(4, products.getCreateAt());
            stm.setString(5, products.getUpdateAt());
            stm.setBoolean(6, true);
            int rs = stm.executeUpdate();
            if(rs > 0) return  true;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return false;
    }

    public boolean checkModel(String name){
        try{
            String sql = "SELECT [product_id]\n" +
                    "      ,[model]\n" +
                    "      ,[description]\n" +
                    "      ,[price]\n" +
                    "      ,[create_at]\n" +
                    "      ,[update_at]\n" +
                    "      ,[isActive]\n" +
                    "  FROM [dbo].[Products]\n" +
                    "  WHERE [Products].[model] like '" +name + "'";
            PreparedStatement stm = connection.prepareStatement(sql);
            int rs = stm.executeUpdate();
            if(rs > 0) return true;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return  false;
    }

    @Override
    public Products findProByName(String name) {
        try{
            String sql = "SELECT [product_id]\n" +
                    "      ,[model]\n" +
                    "      ,[description]\n" +
                    "      ,[price]\n" +
                    "      ,[create_at]\n" +
                    "      ,[update_at]\n" +
                    "      ,[isActive]\n" +
                    "FROM [SHOE9].[dbo].[Products]\n" +
                    "WHERE [model] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
                return new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7));
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public Products findProById(int id) {
        try {
            String sql = "SELECT [product_id]\n" +
                    "      ,[model]\n" +
                    "      ,[description]\n" +
                    "      ,[price]\n" +
                    "      ,[create_at]\n" +
                    "      ,[update_at]\n" +
                    "      ,[isActive]\n" +
                    "  FROM [dbo].[Products]\n" +
                    "  where product_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            Products p = null;
            if (rs.next()) {
                p = new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7));
            }
            return p;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}

