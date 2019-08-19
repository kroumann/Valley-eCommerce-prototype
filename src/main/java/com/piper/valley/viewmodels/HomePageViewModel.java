package com.piper.valley.viewmodels;

import com.piper.valley.models.domain.StoreProduct;
import com.piper.valley.models.service.StoreProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Collection;
import java.util.HashMap;

@Component
public class HomePageViewModel {
    @Autowired
    StoreProductService storeProductService;

    //Getting all products
    public HashMap<String, Object> create() {
        HashMap<String, Object> model = new HashMap<>();
        Collection<StoreProduct> products=storeProductService.getTop30();
        System.out.println("products:" + products.toString());
        model.put("products",products);
        return model;
    }

}
