<%@page import="com.beans.*"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="com.util.user_masterutil"%>
<%@ page import="java.sql.*" %>  
<%  
    String email=request.getParameter("val");  
    String pass=request.getParameter("pass");
    String role=request.getParameter("roled");
    String password=usermaster_dao.doEncryption(pass);
    System.out.println("Email is      ::::::::::::::::::::::::" + email);
    System.out.println("Password is ::::::::::" + pass);
    System.out.println("Role ============ " + role);
    if(email==null || email.trim().equals("") || password.trim().equals("") || password==null || role.trim().equals("") || role==null)
    {  
    	out.println("false");  
    }
    else
    {  
    	Transaction tr=null;
    	Session session2=user_masterutil.createsession();
    	user_master u=null;
    	
    	try
    	{  
      		System.out.println("in email check.jsppppppppppppppppppppppppppppppppppppppppppppppppppppppp");
      		tr=session2.beginTransaction();
    		String hql="FROM user_master u where u.email=:email AND u.password=:password AND u.role =:role";
    		System.out.println("in email check.jsppppppppppppppppppppppppppppppppppppppppppppppppppppppp2222222222");
      		Query query=session2.createQuery(hql);
      		query.setParameter("email", email);
      		query.setParameter("password", password);
      		query.setParameter("role",role);
      		
      		@SuppressWarnings("unchecked")
      			List<user_master> result=query.list();
      			tr.commit();
      			session2.close();
      			System.out.println("cccrrrreeeeeaaaaammmmssssssssssssyyyyyyyyyy");
      			if(!result.isEmpty())
      			{
      				System.out.println("result is not empty!");
      				out.println("true");
      			}
      			else
      			{
      				System.out.println("result is empty!");
      				out.println("false");
      			}
    	}
    	catch(Exception e)
    	{
    		out.print(e);
    	}  
    }  
    %>  