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
    System.out.println("Email is      ::::::::::::::::::::::::" + email);
    if(email==null || email.equals(""))
    {  
    	out.println("Please enter Email Address!");  
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
    		String hql="FROM user u where u.email=:email";
      		Query query=session2.createQuery(hql);
      		query.setParameter("email", email);
      		
      		@SuppressWarnings("unchecked")
      			List<user_master> result=query.list();
      			tr.commit();
      			session2.close();
      			System.out.println("cccrrrreeeeeaaaaammmmssssssssssssyyyyyyyyyy");
      			if(!result.isEmpty())
      			{
      				out.println("true");
      			}
      			else
      			{
      				out.println("false");
      			}
    	}
    	catch(Exception e)
    	{
    		out.print(e);
    	}  
    }  
    %>  