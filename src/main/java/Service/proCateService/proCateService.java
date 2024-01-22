package Service.proCateService;

import Model.ProductsCategories;
import Repository.ProCateRepo.IProCateRepo;

import java.util.List;

public class proCateService {

    private IProCateRepo iProCateRepo;

    public proCateService(IProCateRepo iProCateRepo) {
        this.iProCateRepo = iProCateRepo;
    }

    public List<ProductsCategories> listProCate(){
        return iProCateRepo.listProCate();
    }

    public boolean insertProCate(int proId, int cateId){
        return iProCateRepo.insertProCate(proId, cateId);
    }

    public boolean deleteProCateByProId(int proId){
        return iProCateRepo.deleteProCateByProId(proId);
    }

    public boolean deleteProCateByCateId(int cateId){
        return iProCateRepo.deleteProCateByCateId(cateId);
    }
}
