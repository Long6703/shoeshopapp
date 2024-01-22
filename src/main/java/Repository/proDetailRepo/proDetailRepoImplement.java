package Repository.proDetailRepo;

import Model.Colors;
import Model.Sizes;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class proDetailRepoImplement extends DBConnect implements IProDetaiIRepo {
    @Override
    public ProductDetails getAProDetail(int proId, int colorId, int sizeId) {
        try{
            String sql = "SELECT [Product_Details].[product_detail_id], [Product_Details].product_id, [Product_Details].[size_id], [Product_Details].color_id, Product_Details.stock ,[Product_Details].[description]\n" +
                    "\tFROM [Products]\n" +
                    "\tRIGHT JOIN [Product_Details] ON [Products].product_id = [Product_Details].product_id\n" +
                    "\tLEFT JOIN [Colors] ON [Colors].color_id = [Product_Details].color_id\n" +
                    "\tLEFT JOIN [Sizes] ON [Sizes].size_id = [Product_Details].size_id\n" +
                    "\tWHERE [Product_Details].[product_id] = ? AND [Colors].color_id = ? AND [Sizes].[size_id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, proId);
            stm.setInt(2, colorId);
            stm.setInt(3, sizeId);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
                return new ProductDetails(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6));

        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }



    @Override
    public Colors getColor(int colorId) {
        try{
            String sql = "SELECT [color_id]\n" +
                    "      ,[color_name]\n" +
                    "FROM [dbo].[Colors]\n" +
                    "WHERE [color_id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, colorId);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
                return new Colors(rs.getInt(1),
                        rs.getString(2));
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Sizes getSize(int sizeId) {
        try{
            String sql = "SELECT [size_id]\n" +
                    "      ,[size_name]\n" +
                    "        FROM [dbo].[Sizes]\n" +
                    "        WHERE size_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sizeId);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
                return new Sizes(rs.getInt(1), rs.getString(2));
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<ProductDetails> getProDetail(int proId) {
        List<ProductDetails> list = new ArrayList<>();
        try{
            String sql = "SELECT [product_detail_id]\n" +
                    "      ,[product_id]\n" +
                    "      ,[size_id]\n" +
                    "      ,[color_id]\n" +
                    "      ,[stock]\n" +
                    "      ,[description]\n" +
                    "  FROM [dbo].[Product_Details]\n" +
                    "  WHERE [Product_Details].[product_id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, proId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()){
                list.add(new ProductDetails(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6)));
            }
            return list;
        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return null;
    }
}
