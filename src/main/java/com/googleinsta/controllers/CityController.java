package com.googleinsta.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by ericjohn1 on 10/4/2016.
 */
@Controller
public class CityController {

    @RequestMapping("/city")
    public String cityPage(){
        return "googleloc/city";
    }

}
