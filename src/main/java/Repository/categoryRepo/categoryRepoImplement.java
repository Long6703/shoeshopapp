package Repository.categoryRepo;

public class categoryRepoImplement extends DBConnect implements IcategoryRepo {

//    @Override
//    public List<Categories> getAllCategories() {
//        List<Categories> list = new ArrayList<>();
//        try {
//            String sql = "SELECT [category_id]\n" +
//                    "      ,[category_name]\n" +
//                    "      ,[create_at]\n" +
//                    "      ,[update_at]\n" +
//                    "      ,[isActive]\n" +
//                    "FROM [dbo].[Categories]";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                list.add(new Categories(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getDate(3),
//                        rs.getDate(4),
//                        rs.getBoolean(5)));
//            }
//            return list;
//        } catch (SQLException exception) {
//            exception.printStackTrace();
//        }
//        return null;
//    }
//    @Override
//    public Categories getCateById(int id) {
//        try{
//            String sql = "SELECT [category_id]\n" +
//                    "      ,[category_name]\n" +
//                    "      ,[create_at]\n" +
//                    "      ,[update_at]\n" +
//                    "      ,[isActive]\n" +
//                    "FROM [dbo].[Categories]\n" +
//                    "WHERE [Categories].category_id = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, id);
//            ResultSet rs = stm.executeQuery();
//            if(rs.next()){
//                return new Categories(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getDate(3),
//                        rs.getDate(4),
//                        rs.getBoolean(5));
//            }
//        }catch (SQLException exception){
//            exception.printStackTrace();
//        }
//        return null;
//    }
//
//    @Override
//    public boolean insertCategory(String name, java.util.Date crAt, java.util.Date upAt, boolean Active) {
//        try {
//            String sql = "INSERT INTO [dbo].[Categories]\n" +
//                    "        ([category_name]\n" +
//                    "           ,[create_at]\n" +
//                    "           ,[update_at]\n" +
//                    "           ,[isActive])\n" +
//                    "        VALUES\n" +
//                    "                (?,?,?,?)";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, name);
//            stm.setDate(2, (Date) crAt);
//            stm.setDate(3, (Date) upAt);
//            stm.setBoolean(4, Active);
//            int rs = stm.executeUpdate();
//            if(rs > 0) return true;
//        } catch (SQLException exception) {
//            exception.printStackTrace();
//        }
//        return false;
//
//    }
//
//
//    public boolean deleteCateById(int cateId){
//        try{
//            String sql = "DELETE FROM [dbo].[Categories]\n" +
//                    "      WHERE [Categories].category_id = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, cateId);
//            int rs = stm.executeUpdate();
//            if(rs > 0)  return true;
//        }catch (SQLException exception){
//            exception.printStackTrace();
//        }
//        return false;
//    }
//
//    public boolean deleteCateByName(String cateName){
//        try{
//            String sql = "DELETE FROM [dbo].[Categories]\n" +
//                    "      WHERE [Categories].category_name = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, cateName);
//            int rs = stm.executeUpdate();
//            if(rs > 0){
//                return true;
//            }
//        }catch (SQLException exception){
//            exception.printStackTrace();
//        }
//        return false;
//    }
//
//    public boolean updateCate(Categories cate){
//        try{
//            String sql = "UPDATE [dbo].[Categories]\n" +
//                    "   SET [category_name] = ?\n" +  //1
//                    "      ,[create_at] = ?\n" +      //2
//                    "      ,[update_at] = ?\n" +      //3
//                    "      ,[isActive] = ?\n" +       //4
//                    " WHERE [Categories].category_id = ?";//5
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, cate.getCategoryName());
//            stm.setDate(2, (Date)cate.getCreateAt());
//            stm.setDate(3, (Date)cate.getUpdateAt());
//            stm.setBoolean(4, cate.isActive());
//            stm.setInt(5, cate.getCategoryId());
//            int rs = stm.executeUpdate();
//            if(rs > 0) return true;
//        }catch (SQLException exception){
//            exception.printStackTrace();
//        }
//        return false;
//    }
//
//    @Override
//    public boolean checkExistedCate(String name) {
//        String sql = "SELECT [category_id]\n" +
//                "      ,[category_name]\n" +
//                "      ,[create_at]\n" +
//                "      ,[update_at]\n" +
//                "      ,[isActive]\n" +
//                "  FROM [dbo].[Categories]\n" +
//                "  where category_name like '?'";
//        try{
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, name);
//            ResultSet rs = stm.executeQuery();
//            if(rs.next()){
//                return false;
//            }
//        }catch (SQLException e){
//            e.printStackTrace();
//        }
//        return true;
//    }


}
