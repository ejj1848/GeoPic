package com.googleinsta.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by ericjohn1 on 10/5/2016.
 */
@Controller
public class PictureController {

        @RequestMapping("/pictures")
        public String cityPage(){
            return "googleloc/pictures";
        }
    }


