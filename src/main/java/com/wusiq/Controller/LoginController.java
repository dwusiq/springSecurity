package com.wusiq.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 登陆处理控制器
 */
@Controller
@RequestMapping(value = "login")
public class LoginController {
    @RequestMapping(value = "loginPage", method = RequestMethod.GET)
    public ModelAndView login(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();
        System.out.println("loginPage");
        if (error != null) {
            System.out.println("error");
            model.addObject("error", "不正确的用户名和密码");
        }
        if (logout != null) {
            System.out.println("logout");
            model.addObject("msg", "你已经成功退出");
        }
        model.setViewName("loginPage");
        return model;
    }

    /*登陆成功跳转首页*/
    @RequestMapping(value = "indexPage", method = RequestMethod.POST)
    public ModelAndView loginSuccess() {
        ModelAndView model = new ModelAndView();
        model.setViewName("index");
        return model;
    }
}
