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
	 * �˹��������ڲ�׽�쳣��������־д�����ת
	 */
	@Override
	public void doFilter(ServletRequest req, ServletResponse rep,
			FilterChain chain) throws IOException, ServletException {

		String error = ""; //׼��Ҫ�����صĴ�����Ϣ
		try{
			chain.doFilter(req, rep);
		}catch (BaseException e) {
			error = e.getKey();
		}catch (BaseError e) {
			error = e.getKey();
		}catch (Exception e) {//Exception��RuntimeException�ĸ��࣬������һЩ�쳣����RuntimeException�ģ�����Ҫ��©
			error = "ϵͳ����δ֪�쳣�����Ժ�����";
		}catch (Error e) {
			error = "ϵͳ���ִ�������ϵ������Ա";
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
