package com.bootstrap.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.bootstrap.entity.User;
import com.bootstrap.util.LoggerUtils;

public class RightFilterInterceptor implements HandlerInterceptor {

	private static List<String> commons;

	static {
		commons = new ArrayList<String>();
		commons.add("Login/login.hl");
		commons.add("Login/logout.hl");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		LoggerUtils.d("请求地址:"+request.getRequestURI());
		String uri=request.getRequestURI();
		uri=uri.substring(request.getContextPath().length()+1);
		if(commons.contains(uri)){
			return true;
		}else{
			User user = (User) request.getSession().getAttribute("user");
			if (user == null) {
				response.sendRedirect(request.getContextPath() + "/Login/login.hl");
				return false;
			}
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

}
