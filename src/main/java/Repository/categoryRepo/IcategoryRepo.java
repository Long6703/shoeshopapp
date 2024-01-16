package Repository.categoryRepo;

import Model.Categories;

import java.util.List;

public interface IcategoryRepo {
    public List<Categories> getAllCategories();
    public Categories getCateById(int id);
    public boolean insertCategory();
    public boolean deleteCateById(int cateId);
    public boolean deleteCateByName(String cateName);
    public boolean updateCate(Categories cate);
}
