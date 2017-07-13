package com.wusiq.Controller;

/**
 * Created by wicker on 2017/7/13.
 */

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 商品管理的控制器类
 */
@RequestMapping("produceManage")
@Controller
public class ProduceController {
    private static Logger LOGGER =  LoggerFactory.getLogger(ProduceController.class);

    @RequestMapping(value = "/insertUser.do",method = RequestMethod.POST)
    public String insertUser(/*ReqInsertUserDto req*/){
        LOGGER.info("添加商品开始");
/*        Users users = new Users();
        users.setUsername(req.getUsername());
        users.setUserage(req.getUserage());
        int i = userService.insertUser(users);
        LOGGER.info("添加商品结束,影响行数:{}",i);*/
        return "successPage";
    }
}
