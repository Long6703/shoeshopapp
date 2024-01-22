package Repository.ProCateRepo;

import Model.ProductsCategories;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class proCateRepoImplement extends DBConnect implements IProCateRepo {
    @Override
    public List<ProductsCategories> listProCate() {
        List<ProductsCategories> list = new ArrayList<>();
        try{
            String sql = "SELECT [product_id]\n" +
                    "      ,[category_id]\n" +
                    "  FROM [dbo].[Product_Categories]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                list.add(new ProductsCategories(rs.getInt(1), rs.getInt(2)));
            }
            return list;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean insertProCate(int proId, int cateId) {
        try{
            String sql = "INSERT INTO [dbo].[Product_Categories]\n" +
                    "           ([product_id]\n" +
                    "           ,[category_id])\n" +
                    "     VALUES\n" +
                    "           (?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, proId);
            stm.setInt(2, cateId);
            int rs = stm.executeUpdate();
            if(rs > 0) return true;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteProCateByProId(int proId) {
        try {
            String sql = "DELETE FROM [dbo].[Product_Categories]\n" +
                    "      WHERE product_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, proId);
            int rs = stm.executeUpdate();
            if(rs > 0) return true;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return false;
    }


    public boolean deleteProCateByCateId(int cateId) {
        try {
            String sql = "DELETE FROM [dbo].[Product_Categories]\n" +
                    "      WHERE category_id = ?;";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, cateId);
            int rs = stm.executeUpdate();
            if(rs > 0) return true;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return false;
    }


}
