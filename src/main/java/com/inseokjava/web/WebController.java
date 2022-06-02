package com.inseokjava.web;


import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inseokjava.web.dao.IDao;
import com.inseokjava.web.dto.MemberDto;

@Controller
public class WebController {

   @Autowired
   private SqlSession sqlSession;   
   
   @RequestMapping(value = "/")
   public String home() {      
      
      return "index";
   }
   
   @RequestMapping(value = "/index")
   public String index() {      
      
      return "index";
   }
   
   @RequestMapping(value = "/login")
   public String login() {      
      
      return "login";
   }
   
   @RequestMapping(value = "/join")
   public String join() {      
      
      return "join";
   }
   
   @RequestMapping(value = "/profile")
   public String profile() {      
      
      return "profile";
   }
   
   @RequestMapping(value = "/question")
   public String question() {      
      
      return "question";
   }
   
   @RequestMapping(value = "/contact")
   public String contact() {      
      
      return "contact";
   }
   
   @RequestMapping(value = "/joinOk", method = RequestMethod.POST)
   public String joinOk(HttpServletRequest request, Model model) {
      
      IDao dao = sqlSession.getMapper(IDao.class);
      
      int checkIdFlag = dao.checkIdDao(request.getParameter("id"));
      //입력받은 아이디가 DB에 존재하면 1, 아니면 0이 반환
      
      model.addAttribute("checkIdFlag", checkIdFlag);
      //checkIdFlag=1이면 아이디 사용중, 0이면 신규 가입가능
      
      if (checkIdFlag != 1) {
         dao.joinDao(request.getParameter("id"), request.getParameter("pw"), request.getParameter("name"), request.getParameter("email"), request.getParameter("phone"));
         
         HttpSession session = request.getSession();
         
         session.setAttribute("id", request.getParameter("id"));
         //세션에 가입성공된 아이디를 저장하여 로그인까지 하게 함
         
         model.addAttribute("mname", request.getParameter("name"));
         model.addAttribute("mid", request.getParameter("id"));
      }
      
      return "joinOk";
   }
   
   @RequestMapping(value="/logout")
   public String logout() {
      
      return "logout";
   }
   
   @RequestMapping(value = "/loginOk", method = RequestMethod.POST)
   public String loginOk(HttpServletRequest request, Model model) {
      
      IDao dao = sqlSession.getMapper(IDao.class);
      
      int checkIdFlag = dao.checkIdDao(request.getParameter("id"));
      //입력받은 아이디가 DB에 존재하면 1, 아니면 0이 반환
      int checkPwFlag = dao.checkPwDao(request.getParameter("id"), request.getParameter("pw"));
      //입력받은 아이디와 그 아이디의 비밀번호가 일치하면 1, 아니면 0이 반환
      
      model.addAttribute("checkIdFlag", checkIdFlag);
      //checkIdFlag=1이면 로그인 하려는 아이디가 존재함(로그인 가능)
      model.addAttribute("checkPwFlag", checkPwFlag);
      //checkPwFlage=1이면 아이디와 그 아이디의 비밀번호가 일치하므로 로그인 가능
      
      if (checkPwFlag == 1) {
         
         MemberDto memberDto = dao.loginOkDao(request.getParameter("id"));
         
         HttpSession session = request.getSession();
         
         session.setAttribute("id", memberDto.getMid());         
         session.setAttribute("name", memberDto.getMname());
         //로그인 성공시 세션에 아이디와 이름 저장
         
         model.addAttribute("mname", memberDto.getMname());
         model.addAttribute("mid", memberDto.getMid());
      }
      
      return "loginOk";
   }
   
   @RequestMapping(value="/infoModify")
   public String infoModify(HttpServletRequest request, Model model) {
      
      HttpSession session = request.getSession();
      
      String sessionId = (String) session.getAttribute("id");
      
      IDao dao = sqlSession.getMapper(IDao.class);
      
      MemberDto memberDto = dao.loginOkDao(sessionId);
      
      model.addAttribute("memberDto", memberDto);
      
      return "infoModify";
   }
   
   @RequestMapping(value="/infoModifyOk")
   public String infoModifyOk(HttpServletRequest request, Model model) {
      
      IDao dao = sqlSession.getMapper(IDao.class);
      
      dao.memberInfoModifyOkDao(request.getParameter("pw"), request.getParameter("name"), request.getParameter("email"), request.getParameter("id"));
      
      MemberDto memberDto = dao.loginOkDao(request.getParameter("id"));
      
      model.addAttribute("memberDto", memberDto);
      
      return "infoModifyOk";
   }
   
   @RequestMapping(value = "/write")
   public String write(HttpServletRequest request) {
      
      IDao dao = sqlSession.getMapper(IDao.class);
      
      dao.writeDao(request.getParameter("qid"), request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"));
      
      return "redirect:list";
   }
   
   @RequestMapping(value = "/list")
   public String list(Model model) {
      
      IDao dao = sqlSession.getMapper(IDao.class);
      model.addAttribute("list", dao.listDao());
      
      return "list";
   }
   
   @RequestMapping(value = "/qview")
   public String qview(HttpServletRequest request, Model model) {
      
      IDao dao = sqlSession.getMapper(IDao.class);
      model.addAttribute("qview", dao.viewDao(request.getParameter("qnum")));      
      
      return "qview";
   }
   
   @RequestMapping(value = "/delete")
   public String delete(HttpServletRequest request) {
      
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.deleteDao(request.getParameter("qnum"));
      
      return "redirect:list";
   }
   
   @RequestMapping(value = "/modify")
   public String modify(HttpServletRequest request) {
      
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.modifyDao(request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"), request.getParameter("qnum"));      
      
      return "redirect:list";
   }
   
   @RequestMapping(value = "/menu")
   public String menu(HttpServletRequest request, Model model) {
//      dao.menuDao(request.getParameter("hname"), request.getParameter("hcup"), request.getParameter("hprice"));
//      IDao dao = sqlSession.getMapper(IDao.class);
//      model.addAttribute("menu", dao.MenuDao());
      return "menu";
 }
   @RequestMapping(value = "/test")
   public String test() {
      return "test";
   }
   @RequestMapping(value = "/menuOk")
   public String menuOk(HttpServletRequest request, Model model) {
      
       
      IDao dao = sqlSession.getMapper(IDao.class);
      HttpSession session = request.getSession();
         
      String order1 = request.getParameter("order1");
      String order2 = request.getParameter("order2");
      String order3 = request.getParameter("order3");
      String order4 = request.getParameter("order4");
      String order5 = request.getParameter("order5");
      String order6 = request.getParameter("order6");
      
      String order1cup = request.getParameter("order1cup");
      String order2cup = request.getParameter("order2cup");
      String order3cup = request.getParameter("order3cup");
      String order4cup = request.getParameter("order4cup");
      String order5cup = request.getParameter("order5cup");
      String order6cup = request.getParameter("order6cup");
      
      
      String order1price = request.getParameter("order1price");
      String order2price = request.getParameter("order2price");
      String order3price = request.getParameter("order3price");
      String order4price = request.getParameter("order4price");
      String order5price = request.getParameter("order5price");
      String order6price = request.getParameter("order6price");
      
      
      int order1priceint = 0;
      int order2priceint = 0;
      int order3priceint = 0;
      int order4priceint = 0;
      int order5priceint = 0;
      int order6priceint = 0;
      
      int order1cupint = 0;
      int order2cupint = 0;
      int order3cupint = 0;
      int order4cupint = 0;
      int order5cupint = 0;
      int order6cupint = 0;

 

      
      
      if(order1price == " ")  {
         order1priceint = 0;
         
      } else {
         order1priceint = Integer.parseInt(order1price);
      }
      if(order2price == " ")  {
         order2priceint = 0;
      } else {
         order2priceint = Integer.parseInt(order2price);
      }
      if(order3price == " ")  {
         order3priceint = 0;
      } else {
         order3priceint = Integer.parseInt(order3price);
      }
      if(order4price == " ")  {
         order4priceint = 0;
      } else {
         order4priceint = Integer.parseInt(order4price);
      }
      if(order5price == " ")  {
         order5priceint = 0;
      } else {
         order5priceint = Integer.parseInt(order5price);
      }
      if(order6price == " ")  {
         order6priceint = 0;
      } else {
         order6priceint = Integer.parseInt(order6price);
      }
      
      
      if(order1cup == " ")  {
          order1cupint = 0;
       } else {
          order1cupint = Integer.parseInt(order1cup);
       }
      if(order2cup == " ")  {
          order2cupint = 0;
       } else {
          order2cupint = Integer.parseInt(order2cup);
       }
      if(order3cup == " ")  {
          order3cupint = 0;
       } else {
          order3cupint = Integer.parseInt(order3cup);
       }
      if(order4cup == " ")  {
          order4cupint = 0;
       } else {
          order4cupint = Integer.parseInt(order4cup);
       }
      if(order5cup == " ")  {
          order5cupint = 0;
       } else {
          order5cupint = Integer.parseInt(order5cup);
       }
      if(order6cup == " ")  {
          order6cupint = 0;
       } else {
          order6cupint = Integer.parseInt(order6cup);
       }
      
      
      
      
      int orderallprice = 
            (order1priceint * order1cupint) + (order2priceint * order2cupint) +
            (order3priceint * order3cupint) + (order4priceint * order4cupint) +
            (order5priceint * order5cupint) + (order6priceint * order6cupint);
      
      
      dao.menuDao(request.getParameter("order1"), request.getParameter("order2"), request.getParameter("order3"), request.getParameter("order4"), request.getParameter("order5"), request.getParameter("order6"), 
            order1cup, order2cup, order3cup, order4cup, order5cup, order6cup, 
            order1priceint, order2priceint, order3priceint, order4priceint, order5priceint, order6priceint, orderallprice);
      
      
      
      
      return "menuOk";
            

   
   }

}