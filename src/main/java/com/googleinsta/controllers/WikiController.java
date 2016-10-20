package com.googleinsta.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by ericjohn1 on 10/20/2016.
 */

@Controller
public class WikiController {
    @RequestMapping("/wiki")
    public String wikiPage(){return "googleloc/wiki";}

}
