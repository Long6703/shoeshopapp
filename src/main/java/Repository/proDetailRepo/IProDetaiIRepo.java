package Repository.proDetailRepo;

import Model.Colors;
import Model.ProductDetails;
import Model.Sizes;

import java.util.List;

public interface IProDetaiIRepo {
    public ProductDetails getAProDetail(int proId, int colorId, int sizeId);

    public Colors getColor(int colorId);

    public Sizes getSize(int sizeId);

    public List<ProductDetails> getProDetail(int proId);
}
