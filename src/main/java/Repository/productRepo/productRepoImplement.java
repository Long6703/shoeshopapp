package Repository.productRepo;

import Model.Products;
import Model.Users;
import Repository.DBConnect;
import Repository.authenRepo.IauthenRepo;

import java.sql.SQLException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class productRepoImplement extends DBConnect implements IproductRepo {
    @Override
    public List<Products> getAllProducts() {
        return null;
    }
}

