package com.googleinsta.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by ericjohn1 on 10/4/2016.
 */

@Controller
public class IndexController {

    @RequestMapping("/")
    String index() {
        return "index";
    }
}
