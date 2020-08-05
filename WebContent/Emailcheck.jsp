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
    if(email==null||email.trim().equals(""))
    {  
    	out.println("Please enter Email!");  
    }
    else
    {  
    	Transaction tr=null;
    	Session session2=user_masterutil.createsession();
    	user_master u=null;
    	
    	try
    	{  
    		/* Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krrunchy","root","");  
    		 */
    		//userutil.createsession();
    		/* PreparedStatement ps=con.prepareStatement("select * from users where Email=?");  
    		ps.setString(1, Email);
    		ResultSet rs=ps.executeQuery();   */
    		/* System.out.println("in");
    		
    		SessionFactory sf=new Configuration()
					.addAnnotatedClass(user.class)
					.configure()
					.buildSessionFactory();
			Session session1=sf.openSession();
    		
			user u=null;
			/* session1=userutil.createsession(); */
			/*u=session1.get(user.class, Email);
			
			
    		System.out.println("out");
      		if(u!=null) 
      		{      
     			out.println("true");   
    		}
      		else
      		{  
    			out.println("false"); 
    		}    */
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