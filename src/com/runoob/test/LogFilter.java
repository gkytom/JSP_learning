package com.runoob.test;

//�������� java ��
import javax.servlet.*;
import java.util.*;

//ʵ�� Filter ��
public class LogFilter implements Filter  {
  public void  init(FilterConfig config) throws ServletException {
      // ��ȡ��ʼ������
      String site = config.getInitParameter("Site"); 
      String name=config.getFilterName();

      // �����ʼ������
      System.out.println("��վ����: " + site + name); 
  }
  public void  doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws java.io.IOException, ServletException {

      // ���վ������
      System.out.println("վ����ַ��http://www.runoob.com");

      // �����󴫻ع�����
      chain.doFilter(request,response);
  }
  public void destroy( ){
      /* �� Filter ʵ���� Web �����ӷ����Ƴ�֮ǰ���� */
  }
}