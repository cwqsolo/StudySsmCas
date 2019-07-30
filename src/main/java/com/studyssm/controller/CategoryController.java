package com.studyssm.controller;


import java.util.List;
import com.studyssm.entity.User;
import com.studyssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.studyssm.util.Page;



// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class CategoryController {
    @Autowired
    UserService userService;

    @RequestMapping("listCategory")
    public ModelAndView listCategory(Page page) {

        System.out.println("categorycontroller  listCategory +++++");
        ModelAndView mav = new ModelAndView();
        PageHelper.offsetPage(page.getStart(), 5);
        List<User> cs = userService.list();
        int total = (int) new PageInfo<>(cs).getTotal();

        page.caculateLast(total);

        // 放入转发参数
        mav.addObject("cs", cs);
        // 放入jsp路径
        mav.setViewName("sys/listCategory2");
        return mav;
    }


    @RequestMapping("managerUser")
    public ModelAndView manager() {

        System.out.println("categorycontroller  listCategory +++++");
        ModelAndView mav = new ModelAndView();
        // 放入jsp路径
        mav.setViewName("sys/managerUser");
        return mav;
    }

    @RequestMapping("addUser")
    public ModelAndView addUser() {

        System.out.println("categorycontroller  addUser +++++");
        ModelAndView mav = new ModelAndView();
        // 放入jsp路径
        mav.setViewName("sys/managerUser");
        return mav;
    }


    @RequestMapping("todoList")
    public ModelAndView todoList() {

        System.out.println("categorycontroller  listCategory +++++");
        ModelAndView mav = new ModelAndView();
        // 放入jsp路径
        mav.setViewName("sys/todoList");
        return mav;
    }

    @RequestMapping("loginOUt")
    public ModelAndView loginOUt() {

        System.out.println("categorycontroller  listCategory +++++");
        ModelAndView mav = new ModelAndView();
        // 放入jsp路径
        mav.setViewName("logout");
        return mav;
    }
}
