package Repository.ProCateRepo;

import Model.ProductsCategories;
import java.util.List;
public interface IProCateRepo {
    public List<ProductsCategories> listProCate();

    public boolean insertProCate(int proId, int cateId);

    public boolean deleteProCateByProId(int proId);

    public boolean deleteProCateByCateId(int cateId);
}
