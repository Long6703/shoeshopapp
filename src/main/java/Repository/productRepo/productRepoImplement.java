package Repository.productRepo;

import Model.Products;
import Model.Users;
import Repository.DBConnect;
import Repository.authenRepo.IauthenRepo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class productRepoImplement extends DBConnect implements IproductRepo {
    @Override
    public List<Products> getAllProducts() {
        return null;
    }

    @Override
    public boolean deleteProById(int id) {
        try{
            String sql = "DELETE FROM [dbo].[Products]\n" +
                    "      WHERE [product_id] = ?";
            PreparedStatement stm  = connection.prepareStatement(sql);
            stm.setInt(1, id);
            int rs = stm.executeUpdate();
            if(rs > 0) return true;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteProByName(String name) {
        String sql = "DELETE FROM [dbo].[Products]\n" +
                "      WHERE [model]= ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            int rs = stm.executeUpdate();
            if(rs > 0) return true;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return false;
    }


    @Override
    public List<Products> getProIdByCateId(int cateId) {
        List<Products> list = new ArrayList<>();
        String sql = "SELECT Products.*\n" +
                "FROM Product_Categories INNER JOIN Products\n" +
                "ON Products.product_id = Product_Categories.product_id AND Product_Categories.category_id = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, cateId);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                list.add(new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        rs.getBoolean(6)));
            }
            return list;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return null;
    }
}

