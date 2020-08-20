<%@page import="com.beans.*"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="com.util.user_masterutil"%>
<%@page import="java.sql.*" %>  
    <%  
    String date=request.getParameter("appdate"); 
    int did=Integer.parseInt(request.getParameter("did"));
    System.out.println("Email is      ::::::::::::::::::::::::" + date);
    if(date==null || date.equals(""))
    {  
    	out.println("Please enter Email Address!");  
    }
    else
    {  
    	Transaction tr=null;
    	Session session2 = user_masterutil.createsession();
    	user_master u=null;
    	
    	try
    	{  
      		System.out.println("in email check.jspppppppppppppppppppppppppppppppppp");
      		tr=session2.beginTransaction();
    		/* String hql="FROM user_master u where u.email=:email";
      		Query query=session2.createQuery(hql);
      		query.setParameter("email", email);
      		
      		@SuppressWarnings("unchecked")
      			List<user_master> result=query.list();
      			tr.commit();
      			session2.close(); */
      			List<Appointment> result=usermaster_dao.getappointmentbyidanddate(did, date);
      			System.out.println("cccrrrreeeeeaaaaammmmssssssssssssyyyyyyyyyy");
      			if(!result.isEmpty())
      			{
      				/* out.println("true"); */
      				String lastapptime="";
      				for(Appointment a:result)
      				{
      					lastapptime=a.getAppoint_time();
      				}
      				Doctor d=usermaster_dao.getdocbyid(did);
      				String docendtime=d.getTo_time();
      				if(lastapptime.equalsIgnoreCase(docendtime))
      				{
      					out.println("Sorry! No Appointments available on this date!");
      				}
      				else
      				{
      					String hour=lastapptime.split(":")[0];
      					String mins=lastapptime.split(":")[1];
      					String time="";
      					if(mins.equals("45"))
      					{
      						int hours=Integer.parseInt(hour);
      						hours++;
      						mins="00";
      						System.out.println("Hour = " + hours + " Minutes = " + mins);
      						time=Integer.toString(hours)+":"+mins;
      						
      					}
      					else
      					{
      						int minutes=Integer.parseInt(mins)+15;
      						System.out.println("Hour = " + hour + " Minutes = " + minutes);
      						time=hour+":"+Integer.toString(minutes);
      					}
      					
      					
      					int h=Integer.parseInt(time.split(":")[0]);
      					if(h>12)
      					{
      						
      						time=Integer.toString(h-12)+":"+time.split(":")[1]+" PM";
      					}
      					else
      					{
      						time+=" AM";
      					}
      					out.println(time);
      				}
      			}
      			else
      			{
      				Doctor d=usermaster_dao.getdocbyid(did);
      				String time=d.getFrom_time();
      				int h=Integer.parseInt(time.split(":")[0]);
  					if(h>12)
  					{
  						
  						time=Integer.toString(h-12)+":"+time.split(":")[1]+" PM";
  					}
  					else
  					{
  						time+=" AM";
  					}
  					out.println(time);
      			}
    	}
    	catch(Exception e)
    	{
    		out.print(e);
    	}  
    }  
    %>  