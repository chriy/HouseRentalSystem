package com.house.controller.user;

import com.house.entity.User;
import com.house.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 普通用户登录
 *
 * @author chriy
 */
@Controller
@RequestMapping("/user")
public class LoginController {

    @Autowired
    private IUserService mapper;

    /**
     * 登录
     *
     * @param userName     用户名
     * @param userPassword 密码
     * @param req          req
     * @return res
     */
    @PostMapping("/login")
    @ResponseBody
    public String toCustomerPage(String userName, String userPassword, HttpServletRequest req) {
        User user = new User();
        user.setUserName(userName);
        user.setUserPassword(userPassword);
        User loginUser = mapper.login(user);
        if (loginUser != null) {
            req.getSession().setAttribute("loginUser", loginUser);
            return "OK";
        }
        return "FAIL";
    }

    /**
     * 退出登录
     *
     * @param session session
     * @return view
     */
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/index.html";
    }

    @PostMapping("/register")
    @ResponseBody
    public String register(User user) {
        int register;
        try {
            register = mapper.register(user);
            if (register > 0) {
                return "OK";
            }
        } catch (Exception e) {
            return "FAIL";
        }
        return "FAIL";
    }

}
