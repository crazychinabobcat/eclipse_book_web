package cn.itcase.lynx.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcase.lynx.base.BaseServlet;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/IndexServlet")
public class IndexServlet extends BaseServlet {
	

	
       //跳转到注册页面
  public String userRegeist(HttpServletRequest req, HttpServletResponse resp) {
	  return "/register.jsp";
  }
  

}
