package com.yidong.controller.admin;

import com.yidong.entity.User;
import com.yidong.service.UserService;
import com.yidong.utils.MD5Utils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class LoginController {

    @Autowired
    private UserService userService;

    //跳转到登陆页面
    @GetMapping
    public String tologin(){
        return "admin/login";
    }

    //判断用户名密码是否正确
//    @PostMapping("/login")
//    public String login(@RequestParam String username,
//                        @RequestParam String password,
//                        HttpSession session,
//                        RedirectAttributes attributes){
//        User user=userService.checkuser(username, MD5Utils.code(password));
//        if (user != null){
//            user.setPassword(null);
//            session.setAttribute("user",user);
//            return "admin/index";
//        }else {
//            attributes.addFlashAttribute("message","用户名和密码错误");
//            return "redirect:/admin";
//        }
//    }

    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        HttpSession session,
                        RedirectAttributes attributes){
        //获取当前的用户
        Subject subject = SecurityUtils.getSubject();
        //封装用户的登录数据
        String pwd = new Md5Hash(password).toString();
        UsernamePasswordToken token = new UsernamePasswordToken(username,pwd);
        try {
            subject.login(token);//执行登录方法，如果没异常就行
            User user = (User) subject.getPrincipal();
            session.setAttribute("user",user);
            return "admin/index";
        } catch (UnknownAccountException e) {
            attributes.addFlashAttribute("message","用户名错误");
            return "redirect:/admin";
        }catch (IncorrectCredentialsException e){
            attributes.addFlashAttribute("message","密码错误");
            return "redirect:/admin";
        }
    }

    //跳转到欢迎界面
    @GetMapping("/logout")
    public String logout(HttpSession session){
//        session.removeAttribute("user");
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "redirect:/admin";
    }
}
