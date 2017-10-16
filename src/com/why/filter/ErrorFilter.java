package com.why.filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.apache.log4j.Logger;

import com.why.extraException.BaseError;
import com.why.extraException.BaseException;




public class ErrorFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	/**
	 * 此过滤器用于捕捉异常并进行日志写入和跳转
	 */
	@Override
	public void doFilter(ServletRequest req, ServletResponse rep,
			FilterChain chain) throws IOException, ServletException {

		String error = ""; //准备要被带回的错误信息
		try{
			chain.doFilter(req, rep);
		}catch (BaseException e) {
			error = e.getKey();
		}catch (BaseError e) {
			error = e.getKey();
		}catch (Exception e) {//Exception是RuntimeException的父类，可能有一些异常不是RuntimeException的，所以要补漏
			error = "系统出现未知异常，请稍后重试";
		}catch (Error e) {
			error = "系统出现错误，请联系管理人员";
		}
		
		if(!"".equals(error)){
		HttpServletResponse response = (HttpServletResponse)rep;
		response.sendRedirect("../View/index.jsp?errorInfo="+error);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
