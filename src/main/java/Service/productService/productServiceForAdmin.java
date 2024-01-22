package Service.productService;

import Repository.proDetailRepo.IProDetaiIRepo;
import Repository.productRepo.IproductRepoForAdmin;
import Model.Products;
import java.util.List;
import Model.*;
public class productServiceForAdmin {
    private IproductRepoForAdmin iproductRepoForAdmin;
    private IProDetaiIRepo iProDetaiIRepo;

    public productServiceForAdmin(IProDetaiIRepo iProDetaiIRepo) {
        this.iProDetaiIRepo = iProDetaiIRepo;
    }

    public productServiceForAdmin(IproductRepoForAdmin iproductRepoForAdmin) {
        this.iproductRepoForAdmin = iproductRepoForAdmin;
    }
    public List<Products> getAllProductsForAdmin(){
        return iproductRepoForAdmin.getAllProductsForAdmin();
    }

    public boolean deleteProById(int id){
        return iproductRepoForAdmin.deleteProById(id);
    }
    public String checkModel(String name){
        Products p = iproductRepoForAdmin.findProByName(name);
        if(p != null){
            return p.getModel();
        }
        return null;
    }
    public boolean checkEx(String name){
        Products p = iproductRepoForAdmin.findProByName(name);
        if(p != null){
            return true;
        }
        return false;
    }

    public boolean createProduct(Products products){
        return iproductRepoForAdmin.createProduct(products);
    }

    public ProductDetails getAProDetail(int proId, int colorId, int sizeId){
        return iProDetaiIRepo.getAProDetail(proId,colorId,sizeId);
    }
    public List<ProductDetails> getProDetail(int proId){
        return iProDetaiIRepo.getProDetail(proId);
    }

    public String getColor(int colorId){
        return iProDetaiIRepo.getColor(colorId).getColorName();
    }

    public String getSize(int sizeId){
        return iProDetaiIRepo.getSize(sizeId).getSizeName();
    }

    public Products getById(int id){
        return iproductRepoForAdmin.findProById(id);
    }

    public boolean updatePro(Products products, int id){
        return iproductRepoForAdmin.updateProduct(products, id);
    }
}
