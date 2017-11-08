package com.isora.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;


@Controller
public class LoginController {

    @RequestMapping(value = {"/","login"}, method = RequestMethod.GET)
    public String login() {
        return "login";
    }


    @RequestMapping(value = "loginsuccess", method = RequestMethod.POST)
    public String loginsuccess(HttpServletRequest request, ModelMap model) {
        String uname = request.getParameter("uname");
        String pword = request.getParameter("pword");
        if(uname.isEmpty()){
            model.addAttribute("message","UserName không được để trống");
        } else if(pword.isEmpty()){
            model.addAttribute("message","Password không được để trống");
        }
        if(uname.equals("ngtoan194") && pword.equals("123")){
            model.addAttribute("user",uname);
            return "loginsuccess";
        } else {
            return "login";
        }
    }

//    @RequestMapping(value = "login", method = RequestMethod.POST)
//    public @ResponseBody
//    JsonObject login(@RequestBody JsonObject user) {
//        JsonObject result = new JsonObject();
//        if (user.get("username").getAsString().equals("admin") && user.get("password").getAsString().equals("123456")) {
//
//            result.addProperty("status", true);
//            return result;
//        }
//        result.addProperty("status", false);
//        result.addProperty("message", "Tài khoản hoặc mật khẩu không tồn tại");
//        return result;
//    }



}
