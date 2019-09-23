package com.piper.valley.viewmodels;

import com.piper.valley.forms.AddDeclareDeviseForm;
import com.piper.valley.models.service.BrandService;
import com.piper.valley.models.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;

@Component
public class AddDeclareDeviseFormViewModel {
	@Autowired
	BrandService brandService;

	@Autowired
	CompanyService companyService;

	//Query for Brands/Companies using the view model!.
	public HashMap<String, Object> create(AddDeclareDeviseForm form) {
		HashMap<String, Object> model = new HashMap<>();
		model.put("AddDeclareDeviseForm"  , form);
		// model.put("brands"          , brandService.getAllBrands());
		// model.put("companies"       , companyService.getAllCompanies());
		return model;
	}

}
