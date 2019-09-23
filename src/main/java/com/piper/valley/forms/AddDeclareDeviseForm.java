package com.piper.valley.forms;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;



@Component
public class AddDeclareDeviseForm {

    @NotNull
    private Long userId;

    @NotEmpty
	@Length(min = 2, max = 50)
	private String formType = "";

   // @NotNull
    //private ObjectMapper formData;

    @NotEmpty
	@Length(min = 2, max = 50)
    private String status = "";
    
    public AddDeclareDeviseForm() {

    }
}