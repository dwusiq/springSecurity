package com.wusiq.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wicker on 2017/7/14.
 */
@Controller
public class LoginController {
    @RequestMapping(value = "loginPage", method = RequestMethod.GET)
    public ModelAndView login(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "不正确的用户名和密码");
        }
        if (logout != null) {
            model.addObject("msg", "你已经成功退出");
        }
        model.setViewName("loginPage");
        return model;
    }
}
