package Service.productService;

import Model.Colors;
import Model.ProductDetails;
import Model.Products;
import Model.Sizes;
import Repository.proDetailRepo.IProDetaiIRepo;
import Repository.productRepo.IproductRepo;

import java.util.List;

public class productService {
    private IproductRepo iproductRepo;
    private IProDetaiIRepo iProDetaiIRepo;

    public productService(IProDetaiIRepo iProDetaiIRepo) {
        this.iProDetaiIRepo = iProDetaiIRepo;
    }

    public productService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }
    public List<Products> getAllProducts(){
        return iproductRepo.getAllProducts();
    }

    public boolean deleteProById(int id){
        return iproductRepo.deleteProById(id);
    }
    public String checkModel(String name){
        Products p = iproductRepo.findProByName(name);
        if(p != null){
            return p.getModel();
        }
        return null;
    }
    public boolean checkEx(String name){
        Products p = iproductRepo.findProByName(name);
        if(p != null){
            return true;
        }
        return false;
    }

    public boolean createProduct(Products products){
        return iproductRepo.createProduct(products);
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
        return iproductRepo.findProById(id);
    }

    public boolean updatePro(Products products, int id){
        return iproductRepo.updateProduct(products, id);
    }
}
