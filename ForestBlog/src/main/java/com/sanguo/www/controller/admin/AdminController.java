package com.sanguo.www.controller.admin;

import cn.hutool.json.JSONUtil;
import com.alibaba.druid.util.StringUtils;
import com.sanguo.www.dto.JsonResult;
import com.sanguo.www.entity.Article;
import com.sanguo.www.entity.Comment;
import com.sanguo.www.entity.User;
import com.sanguo.www.service.ArticleService;
import com.sanguo.www.service.CommentService;
import com.sanguo.www.service.UserService;
import com.sanguo.www.util.MyUtils;
import com.sanguo.www.util.VerificationCodeImgUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author sanguo
 */
@Slf4j
@Controller
public class AdminController {
    @Autowired
    private UserService userService;

    @Autowired
    private ArticleService articleService;

    @Autowired
    private CommentService commentService;

    /**
     * 后台首页
     *
     * @return
     */
    @RequestMapping("/admin")
    public String index(Model model)  {
        //文章列表
        List<Article> articleList = articleService.listRecentArticle(5);
        model.addAttribute("articleList",articleList);
        //评论列表
        List<Comment> commentList = commentService.listRecentComment(5);
        model.addAttribute("commentList",commentList);
        return "Admin/index";
    }

    /**
     * 登录页面显示
     *
     * @return
     */
    @RequestMapping("/login")
    public String loginPage() {
        return "Admin/login";
    }

    /**
     * 登录验证
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/loginVerify",method = RequestMethod.POST)
    @ResponseBody
    public String loginVerify(HttpServletRequest request, HttpServletResponse response)  {
        Map<String, Object> map = new HashMap<String, Object>();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rememberme = request.getParameter("rememberme");
        User user = userService.getUserByNameOrEmail(username);
        if(user==null) {
            map.put("code",0);
            map.put("msg","用户名无效！");
        } else if(!user.getUserPass().equals(password)) {
            map.put("code",0);
            map.put("msg","密码错误！");
        } else {
            //登录成功
            map.put("code",1);
            map.put("msg","");
            //添加session
            request.getSession().setAttribute("user", user);
            try {
                //添加cookie
                if(rememberme!=null) {
                    //创建两个Cookie对象
                    //20200125 cookie中不能存储中文，只能ASCII编码
                    Cookie nameCookie = new Cookie("username", URLEncoder.encode(username, "UTF-8"));
                    //设置Cookie的有效期为3天
                    nameCookie.setMaxAge(60 * 60 * 24 * 3);
                    Cookie pwdCookie = new Cookie("password", password);
                    pwdCookie.setMaxAge(60 * 60 * 24 * 3);
                    response.addCookie(nameCookie);
                    response.addCookie(pwdCookie);
                }
                user.setUserLastLoginTime(new Date());
                user.setUserLastLoginIp(MyUtils.getIpAddr(request));
                userService.updateUser(user);
            } catch (Exception e) {
                log.error("生成Cookie出错 = {}", e.getMessage());
            }
        }
        String result = new JSONObject(map).toString();
        return result;
    }

    /**
     * 退出登录
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/admin/logout")
    public String logout(HttpSession session)  {
        session.removeAttribute("user");
        session.invalidate();
        return "redirect:/";
    }
    
    /**
     * 用户注册
     *
     * @return
     * @author xudonghui
     * @date 2020/1/23
     */
    @RequestMapping("/register")
    public String registerPage() {
        return "Admin/User/register";
    }

    /**
     * 生成验证码
     *
     * @return
     * @author xudonghui
     * @date 2020/1/24
     */
    @RequestMapping(value="/validateCode")
    public String validateCode(HttpServletRequest request,HttpServletResponse response) throws Exception{
        // 设置响应的类型格式为图片格式
        response.setContentType("image/jpeg");
        //禁止图像缓存。
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        HttpSession session = request.getSession();

        VerificationCodeImgUtil vCode = new VerificationCodeImgUtil(120,40,5,100);
        session.setAttribute("code", vCode.getCode());
        vCode.write(response.getOutputStream());
        return null;
    }

    /**
     * 用户注册
     *
     * @return
     * @author xudonghui
     * @date 2020/1/24
     */
    @RequestMapping(value = "/register/login", method = RequestMethod.POST)
    @ResponseBody //需要加上ResponseBody注解否则解析为视图
    public JsonResult registerLogin(User user, HttpServletRequest request,HttpServletResponse response) throws Exception {
        JsonResult result = new JsonResult();
        String code = request.getParameter("code");
        HttpSession session = request.getSession();
        String sessionCode = (String) session.getAttribute("code");
        if (!StringUtils.equalsIgnoreCase(code, sessionCode)) {  //忽略验证码大小写
//    	    throw new RuntimeException("验证码对应不上code=" + code + "  sessionCode=" + sessionCode);
            return result.fail("验证码输入错误");
        }

        //用户注册信息插入表格
        try {
            //USER表中的user_nickName不为空，不知道其他地方是否有用到，先设置为user_name和user_nickName一样
            user.setUserNickname(user.getUserName());
            if (user.getUserId() == null) {
                user.setUserAvatar("/uploads/sanguo.png");
            }
            if (userService.insertUser(user) == null) {
                return result.fail("用户注册失败");
            }
            //添加session
            request.getSession().setAttribute("user", user);
            //添加cookie
            String rememberme = request.getParameter("rememberme");
            if(rememberme!=null) {
                //创建两个Cookie对象
                Cookie nameCookie = new Cookie("username", URLEncoder.encode(user.getUserName(), "UTF-8"));
                //设置Cookie的有效期为3天
                nameCookie.setMaxAge(60 * 60 * 24 * 3);
                Cookie pwdCookie = new Cookie("password", user.getUserPass());
                pwdCookie.setMaxAge(60 * 60 * 24 * 3);
                response.addCookie(nameCookie);
                response.addCookie(pwdCookie);
            }
            return result.ok();
        } catch (Exception e) {
            log.error("user insert error = {}", JSONUtil.toJsonStr(e.getMessage()));
        }
        return result.fail();
    }

}

