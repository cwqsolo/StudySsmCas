package com.studyssm.controller;

import com.studyssm.entity.User;
import com.studyssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Describe:
 *
 * @author cwqsolo
 * @date 2019/07/22
 */

@Controller
@RequestMapping("")
public class LoginController {
    @Autowired
    private UserService userSer;


    @RequestMapping(value = "login")
    public ModelAndView login(HttpServletRequest request) {
        System.out.println("LoginController  login +++++");
        String username;
        String password;

        ModelAndView mav = new ModelAndView();

        //1、获取到传入的username 和password
        username = request.getParameter("username");
        password = request.getParameter("password");

        //2、从数据库中获取这个用户的密码
        User user = userSer.findUserByUsername(username);

        if (null == user) {
            System.out.println("无此用户");
            mav.setViewName("redirect:/login.jsp");  //直接用绝对url
        } else {
            if (password.equals(user.getPassword())) {
                System.out.println(user.toString());
                mav.setViewName("redirect:/index.jsp");    //设置新的跳转的jsp
            } else {
                System.out.println("密码不正确");
                mav.setViewName("redirect:/login.jsp");
            }

        }
        return mav;
    }

    @RequestMapping(value = "index")
    public ModelAndView doIndex() {
        System.out.println("LoginController  doIndex +++++");
        ModelAndView mav = new ModelAndView();

        // 放入jsp路径, 登录后直接显示数据，jsp路径会自动带入
        mav.setViewName("redirect:/index.jsp");
        return mav;
    }

    /**
     * 退出
     * @param session
     * @return
     */
    @RequestMapping("logout")
    public String logout(HttpSession session) {
        System.out.println("run  logout....");
        session.invalidate();
        //return "redirect:/login.jsp";
        return "redirect:http://server.cas.com:8080/cas/logout?service=http://app1.cas.com:8380/node1/login.jsp";
    }

}
