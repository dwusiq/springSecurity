package com.wusiq.Controller;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 用于切换页面的控制器
 */
@Controller
@RequestMapping(value = "pageChange")
public class PageChangeController {
    /*新增页*/
    @RequestMapping(value = "toAddProducePage.do",method = RequestMethod.GET)
    public ModelAndView toAddUserPage(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addProducePage");
        return mv;
    }

    /*修改页*/
    @RequestMapping(value = "toUpdatePage.do",method = RequestMethod.GET)
    public ModelAndView toUpdatePage(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatePage");
        return mv;
    }

    /*删除页*/
    @RequestMapping(value = "toDeletePage.do",method = RequestMethod.GET)
    public ModelAndView toDeletePage(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deletePage");
        return mv;
    }

    /*登录页*/
    @RequestMapping(value = "toLoginPage.do",method = RequestMethod.GET)
    public ModelAndView toLoginPage(@RequestParam(value = "error", required = false) String error){
        ModelAndView mv = new ModelAndView();
        if(StringUtils.isEmpty(error)){
            mv.setViewName("loginPage");
        }else {
            mv.setViewName("loginFialure");
        }
        return mv;
    }

}
