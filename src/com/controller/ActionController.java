package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.beans.Admin;
import com.beans.Appointment;
import com.beans.Doctor;
import com.beans.contact;
import com.beans.user;
import com.beans.user_master;
import com.dao.usermaster_dao;
import com.gnostice.stardocssdk.StarDocs;
import com.pdf.PdfGen;
import com.service.Services;

@WebServlet("/ActionController")
@MultipartConfig
public class ActionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private StarDocs stardocs = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		System.out.println("get");
		System.out.println(action);
		
		if(action.equalsIgnoreCase("bookappointment"))
		{
			System.out.println("bookappointment");
			System.out.println("request.getParameter(\"did\")" + request.getParameter("did"));
			System.out.println("request.getParameter(\"uid\")" + request.getParameter("uid"));
			int did=Integer.parseInt(request.getParameter("did"));
			int uid=Integer.parseInt(request.getParameter("uid"));
			System.out.println("did is" + did);
			System.out.println("uid is" + uid);
			Doctor d=usermaster_dao.getdocbyid(did);
			user u=usermaster_dao.getuserbyid(uid);
			request.setAttribute("d", d);
			request.setAttribute("u", u);
			RequestDispatcher rd=request.getRequestDispatcher("mode.jsp");
			System.out.println("mode.jsp");
			rd.forward(request,response);
		}
		
		else if(action.equalsIgnoreCase("viewssc"))
		{
			String way="D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorssc";
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			String pdfname=d.getSsc();
			String filename=way + File.separator + pdfname;
			File file = new File(filename);  //("c:\\example.pdf");
			byte[] fileData = new byte[(int)file.length()];
			FileInputStream fis = new FileInputStream(file);
			fis.read(fileData);
				
			response.reset();
		        response.setContentType("application/pdf");
		        response.setContentLength(fileData.length);
		        response.setHeader("Content-Disposition", "inline;filename=example.pdf");
		       
		        ServletOutputStream outputStream = response.getOutputStream();
		        outputStream.write(fileData); 
		        outputStream.flush();
		        outputStream.close();
			
		}
		
		else if(action.equalsIgnoreCase("viewhsc"))
		{
			String way="D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorhsc";
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			String pdfname=d.getHsc();
			String filename=way + File.separator + pdfname;
			File file = new File(filename);  //("c:\\example.pdf");
			byte[] fileData = new byte[(int)file.length()];
			FileInputStream fis = new FileInputStream(file);
			fis.read(fileData);
				
			response.reset();
		        response.setContentType("application/pdf");
		        response.setContentLength(fileData.length);
		        response.setHeader("Content-Disposition", "inline;filename=example.pdf");
		       
		        ServletOutputStream outputStream = response.getOutputStream();
		        outputStream.write(fileData); 
		        outputStream.flush();
		        outputStream.close();
			
		}
		
		else if(action.equalsIgnoreCase("viewbac"))
		{
			String way="D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorbac";
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			String pdfname=d.getBac();
			String filename=way + File.separator + pdfname;
			File file = new File(filename);  //("c:\\example.pdf");
			byte[] fileData = new byte[(int)file.length()];
			FileInputStream fis = new FileInputStream(file);
			fis.read(fileData);
				
			response.reset();
		        response.setContentType("application/pdf");
		        response.setContentLength(fileData.length);
		        response.setHeader("Content-Disposition", "inline;filename=example.pdf");
		       
		        ServletOutputStream outputStream = response.getOutputStream();
		        outputStream.write(fileData); 
		        outputStream.flush();
		        outputStream.close();
			
		}
		
		else if(action.equalsIgnoreCase("viewmas"))
		{
			String way="D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctormas";
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			String pdfname=d.getMas();
			String filename=way + File.separator + pdfname;
			File file = new File(filename);  //("c:\\example.pdf");
			byte[] fileData = new byte[(int)file.length()];
			FileInputStream fis = new FileInputStream(file);
			fis.read(fileData);
				
			response.reset();
		        response.setContentType("application/pdf");
		        response.setContentLength(fileData.length);
		        response.setHeader("Content-Disposition", "inline;filename=example.pdf");
		       
		        ServletOutputStream outputStream = response.getOutputStream();
		        outputStream.write(fileData); 
		        outputStream.flush();
		        outputStream.close();
			
		}
		
		else if(action.equalsIgnoreCase("viewothers"))
		{
			String way="D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorothers";
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			String pdfname=d.getOther();
			String filename=way + File.separator + pdfname;
			File file = new File(filename);  //("c:\\example.pdf");
			byte[] fileData = new byte[(int)file.length()];
			FileInputStream fis = new FileInputStream(file);
			fis.read(fileData);
				
			response.reset();
		        response.setContentType("application/pdf");
		        response.setContentLength(fileData.length);
		        response.setHeader("Content-Disposition", "inline;filename=example.pdf");
		       
		        ServletOutputStream outputStream = response.getOutputStream();
		        outputStream.write(fileData); 
		        outputStream.flush();
		        outputStream.close();
			
		}
		if(action.equalsIgnoreCase("viewprescription")) { 
			System.out.println("prescription");
			String way="D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\prescriptions"; 
			int aid=Integer.parseInt(request.getParameter("aid")); 
			Appointment a=usermaster_dao.getappointmentbyid(aid); 
			
			String pdfname=a.getPrescription();
			
		  String filename=way + File.separator + pdfname; 
		  File file = new File(filename);  
		  byte[] fileData = new byte[(int)file.length()]; 
		  FileInputStream fis = new FileInputStream(file);
		  fis.read(fileData);
		  
		  response.reset(); 
		  response.setContentType("application/pdf");
		  response.setContentLength(fileData.length);
		  response.setHeader("Content-Disposition", "inline;filename=example.pdf");
		  ServletOutputStream outputStream = response.getOutputStream();
		  outputStream.write(fileData); outputStream.flush(); outputStream.close(); 
		 }
		if(action.equalsIgnoreCase("search"))
		{
			System.out.println("in search method");
			String name=request.getParameter("name");
			System.out.println(name);
			HttpSession session=request.getSession();
			List<Doctor> list=usermaster_dao.getAllDoctors();
			String p_name=null;
			int id=0;
			for(Doctor d:list)
			{
				System.out.println("in for");
				p_name=d.getFname();
				if(name.equalsIgnoreCase(p_name))
				{
					System.out.println("in if");
					id=d.getDid();
					System.out.println(name);
					System.out.println(id);
					break;
				}
				else
				{
					System.out.println("in else");
					id=0;
				}
			}
				
			Doctor d=usermaster_dao.getdocbyid(id);			
			session.setAttribute("d", d);
			
			request.getRequestDispatcher("update.jsp").forward(request, response);
			
		}
		
		else if(action.equalsIgnoreCase("doctorindex"))
		{
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			int count=0;
			List<Appointment> list1=usermaster_dao.getAllAppointment();
			for(Appointment a : list1)
			{
				if(a.getD().getDid()==d.getDid())
				{
					count+=1;
				}
			}
			request.setAttribute("count", count);
			System.out.println("else iffffffffffffffffffffff");
			HttpSession session = request.getSession();
			session.setAttribute("d", d);
			RequestDispatcher rd=request.getRequestDispatcher("Doctorindex.jsp");
			System.out.println("forwarding");
			rd.forward(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		System.out.println("controllerrrrrrrrrrrrrrrrreeeeeeeeeeeeeeeeeedddddddddddddddddd");
		
		String action=request.getParameter("action");
		System.out.println(action);
		
		if(action.equalsIgnoreCase("registerdoctordetails") || action.equalsIgnoreCase("updateregisterdoctordetails"))
		{
			System.out.println("controllerrrrrrrrrrrrrrrrrrrrr");
			System.out.println("Time : " + request.getParameter("from"));
			String email=request.getParameter("d_email");
			List<Doctor> list=usermaster_dao.getAllDoctors();
			System.out.println("Before for");
			for(Doctor d:list)
			{
				System.out.println(d.getEmail());

				if(d.getEmail().equals(email))
				{
						System.out.println("In if");
					  String savePath = "D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorimages";
					  File fileSaveDir=new File(savePath);
					  System.out.println("folder");
					  if(!fileSaveDir.exists())
					  {
						  fileSaveDir.mkdir();
					  }
					  Part file =request.getPart("d_image");
					  String filename=extractfilename(file); 
					  file.write(savePath + File.separator + filename );
					  System.out.println("img_upload");
					  d.setDimage(filename);
					
					
					d.setFname(request.getParameter("d_fname"));
					d.setLname(request.getParameter("d_lname"));
					d.setGender(request.getParameter("user-type"));
					d.setAddress(request.getParameter("d_add"));
					d.setContact(request.getParameter("d_contact"));
					d.setAadharno(request.getParameter("d_aadhar"));
					d.setHigh_qua(request.getParameter("d_qua"));
					d.setSpeciality(request.getParameter("d_speciality"));
					System.out.println("Speciality is : " + request.getParameter("d_speciality"));
					
					String savePath1 = "D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorssc";
					  File fileSaveDir1=new File(savePath1);
					  System.out.println("folder");
					  if(!fileSaveDir1.exists())
					  {
						  fileSaveDir1.mkdir();
					  } 
					  Part file1 =request.getPart("d_ssc");
					  String filename1=extractfilename(file1); 
					  file1.write(savePath1 + File.separator + filename1 );
					  System.out.println("ssc img_upload");
					  d.setSsc(filename1);
					 
					  
					  String savePath2= "D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorhsc";
					  File fileSaveDir2=new File(savePath2);
					  System.out.println("folder");
					  if(!fileSaveDir2.exists())
					  {
						  fileSaveDir2.mkdir();
					  }
					  Part file2 =request.getPart("d_hsc");
					  String filename2=extractfilename(file2); 
					  file2.write(savePath2 + File.separator + filename2 );
					  System.out.println("hsc img_upload");
					  d.setHsc(filename2);
					  
					  
					  String savePath3 = "D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorbac";
					  File fileSaveDir3=new File(savePath3);
					  System.out.println("folder");
					  if(!fileSaveDir3.exists())
					  {
						  fileSaveDir3.mkdir();
					  }
					  Part file3 =request.getPart("d_bac");
					  String filename3=extractfilename(file3); 
					  file3.write(savePath3 + File.separator + filename3 );
					  System.out.println("bac img_upload");
					  d.setBac(filename3);
					  
					  String savePath4 = "D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctormas";
					  File fileSaveDir4=new File(savePath4);
					  System.out.println("folder");
					  if(!fileSaveDir4.exists())
					  {
						  fileSaveDir4.mkdir();
					  } 
					  Part file4 =request.getPart("d_mas");
					  String filename4=extractfilename(file4); 
					  file4.write(savePath4 + File.separator + filename4 );
					  System.out.println("mas img_upload");
					  d.setMas(filename4);
					  
					  String savePath5 = "D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorothers";
					  File fileSaveDir5=new File(savePath5);
					  System.out.println("folder final");
					  if(!fileSaveDir5.exists())
					  {
						  fileSaveDir5.mkdir();
					  } 
					  
					  Part file5 =request.getPart("d_others");
					  System.out.println(file5);
					  if(file5!=null) {
						  String filename5=extractfilename(file5); 
						  file5.write(savePath5 + File.separator + filename5 );
						  System.out.println("others img_upload");
						  d.setOther(filename5);
					  }		
		  
					  String savePath6 = "D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\doctorclinics";
					  File fileSaveDir6=new File(savePath6);
					  System.out.println("folder not final");
					  if(!fileSaveDir6.exists())
					  {
						  fileSaveDir6.mkdir();
					  } 
					  Part file6 =request.getPart("d_clinic");
					  String filename6=extractfilename(file6); 
					  file6.write(savePath6 + File.separator + filename6 );
					  System.out.println("others img_upload");
					  d.setC_image(filename6);
					  
					  
					d.setC_name(request.getParameter("c_name"));
					d.setC_address(request.getParameter("c_add"));
					d.setLandmark(request.getParameter("c_landmark"));
					d.setCity(request.getParameter("c_city"));
					d.setState(request.getParameter("c_state"));
					d.setPincode(request.getParameter("c_pin"));
					d.setC_email(request.getParameter("c_email"));
				    d.setC_contact(request.getParameter("c_contact"));
				    d.setFees(request.getParameter("fees"));
				    d.setRegisteredid(request.getParameter("regid"));
				    d.setFrom_time(request.getParameter("from"));
				    d.setTo_time(request.getParameter("to"));
				    d.setIsactive("active");
				    System.out.println("updatttttttttttttttttttiiiiiiiiiiiiiiiiiiiiiinnnnnnnnnnnnnggggggggggg");
				    usermaster_dao.updatedoc(d);
				    System.out.println("updated");
				    /*request.setAttribute("u", d);///doocccccccctttttorrr attention
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);*/
				    if(action.equalsIgnoreCase("updateregisterdoctordetails")) {
				    	response.sendRedirect("Adoctor_table.jsp");
				    }
				    else {
				    	response.sendRedirect("afterfurtherdetails.jsp");
				    }
				
				}
			}
		}
		if(action.equalsIgnoreCase("deleteDoc"))
		{
			List<Doctor> list=usermaster_dao.getAllDoctors();
			for(Doctor d1:list)
			{
				int id=Integer.parseInt(request.getParameter("id"));
				if(d1.getDid()==id) 
				{
					//doctor.deleteDoc(d1);
					usermaster_dao.deleteDoc(d1);					
					response.sendRedirect("Adoctor_table.jsp");
				}	
			}							
		}
		
		if(action.equalsIgnoreCase("submit"))
		{
			contact c=new contact();
			c.setName(request.getParameter("Name"));
			c.setEmail(request.getParameter("Email"));
			c.setMessage(request.getParameter("Message"));
			usermaster_dao.feedback(c);
			response.sendRedirect("contact.jsp");
		}
		
		if(action.equalsIgnoreCase("insertusermaster"))
		{
		
			System.out.println("insertusermaster");
			
			String emailid=request.getParameter("email");
			Services s=new Services();
			String enc_pass=null;

			user_master um=new user_master();
			um.setRole(request.getParameter("u-type"));
			um.setFname(request.getParameter("fname"));
			
			um.setLname(request.getParameter("lname"));
			um.setEmail(request.getParameter("email"));
			String Password = request.getParameter("password");
			try
			{
				enc_pass=usermaster_dao.doEncryption(Password);
				//System.out.println("insertusermaster "+enc_pass);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println("Encryption..."+enc_pass);
			um.setPassword(enc_pass);
			String cpass=request.getParameter("cpass");
			usermaster_dao.insertusermaster(um);
			
				
			if(request.getParameter("u-type").equalsIgnoreCase("Doctor"))
			{
				System.out.println("doc");
				Doctor d=new Doctor();
				d.setFname(um.getFname());
				d.setLname(um.getLname());
				d.setEmail(um.getEmail());
				//edited
				d.setAge(request.getParameter("age"));
				//editedend
				d.setPassword(um.getPassword());
				d.setAge(request.getParameter("age"));
				d.setIsverified("not verified");
				d.setIsactive("not active");
				d.setUm(um);
				usermaster_dao.registerdoctor(d);				
				
				String linktoregister="http://localhost:8080/E_Cure/Doctor-Registration.jsp";
				System.out.println(linktoregister);
				System.out.println("controller:" + d.getDid());

				response.sendRedirect("Afterregistration.jsp");
				s.linkmail(emailid, linktoregister);
		}
			else
			{
				System.out.println("else");
				user u=new user();
				u.setFname(um.getFname());
				u.setLname(um.getLname());
				u.setContact(request.getParameter("cnum"));
				//edited
				u.setAge(request.getParameter("age"));
				//editedend
				u.setEmail(um.getEmail());
				u.setPassword(um.getPassword());
				u.setIsactive("not active");
				u.setIsverified("not verified");
				u.setAge(request.getParameter("age"));
				u.setUm(um);
				
				Random r=new Random();
				int otp=r.nextInt(1000000);
				System.out.println(otp);
				
				String otps=Integer.toString(otp);
				u.setOtp(otps);
				usermaster_dao.insertuser(u);
				
				s.sendMail(emailid, otp);
				
				String role1="user";
				request.setAttribute("role1", role1);
				request.setAttribute("u", u);
				RequestDispatcher rd=request.getRequestDispatcher("otp.jsp");
				rd.forward(request, response);
			}		
		}
			
		
		else if(action.equalsIgnoreCase("Submitotp"))
		{
			String role1=request.getParameter("role1");
			int count=0;
			if(role1.equalsIgnoreCase("doctor"))
			{
				int did=Integer.parseInt(request.getParameter("id"));
				Doctor d=usermaster_dao.getdocbyid(did);
				String otp=request.getParameter("receiveotp");
				System.out.println("sent otp :::::::::::::" + d.getOtp());
				System.out.println("receive otp ::::::::::" + otp);
				if(otp.equals(d.getOtp()))
				{
					List<Appointment> list=usermaster_dao.getAllAppointment();
					for(Appointment a : list)
					{
						if(a.getD().getDid()==d.getDid())
						{
							count+=1;
						}
					}
					request.setAttribute("count", count);
					System.out.println("otp done");
					HttpSession session = request.getSession();
					
					session.setAttribute("d", d);
					RequestDispatcher rd=request.getRequestDispatcher("Doctorindex.jsp");
					rd.forward(request, response);
				}
			}
			else
			{
				int uid=Integer.parseInt(request.getParameter("id"));
				user u=usermaster_dao.getuserbyid(uid);
				String otp=request.getParameter("receiveotp");
				System.out.println("sent otp :::::::::::::" + u.getOtp());
				System.out.println("receive otp ::::::::::" + otp);
				if(otp.equals(u.getOtp()))
				{
					System.out.println("otp done");
					request.setAttribute("u", u);
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
				}
			}
		}
		
		else if(action.equalsIgnoreCase("ResendOTP"))
		{
			int uid=Integer.parseInt(request.getParameter("uid"));
			user u=usermaster_dao.getuserbyid(uid);
			Random r=new Random();
			int otp=r.nextInt(1000000);
			System.out.println(otp);
			String otps=Integer.toString(otp);
			u.setOtp(otps);
			usermaster_dao.updateuser(u);
			Services s=new Services();
			s.sendMail(u.getEmail(), otp);
			request.setAttribute("u", u);
			RequestDispatcher rd=request.getRequestDispatcher("otp.jsp");
			rd.include(request, response);
			
		}	
		
		/*else if(action.equalsIgnoreCase("sign_in"))
		{
			String role=request.getParameter("user-type");
			String email=request.getParameter("email");
			System.out.println("emaillllllllllllllll iiiiiiiiiiisssss : " +email);
			String password=request.getParameter("pass");
			if(role.equalsIgnoreCase("doctor"))
			{
				List<Doctor> list=usermaster_dao.getAllDoctors();
				for(Doctor d:list)
				{
					if(d.getEmail().equals(email))
					{
						if(d.getPassword().equals(password))
						{
							System.out.println("active:" + d.getIsactive());
							System.out.println("verified:" + d.getIsverified());
							if(d.getIsactive().equalsIgnoreCase("not active") && d.getIsverified().equalsIgnoreCase("verified"))
							{
								System.out.println("iffffffffff");
								String role1="doctor";
								Random r=new Random();
								int otp=r.nextInt(1000000);
								System.out.println(otp);
								String otps=Integer.toString(otp);
								d.setOtp(otps);
								d.setIsactive("active");
								usermaster_dao.updatedoc(d);
								Services s=new Services();
								s.sendMail(d.getEmail(), otp);
								request.setAttribute("role1", role1);
								request.setAttribute("d", d);
								RequestDispatcher rd=request.getRequestDispatcher("otp.jsp");
								rd.forward(request,response);
							}
							else if(d.getIsactive().equalsIgnoreCase("active") && d.getIsverified().equalsIgnoreCase("verified"))
							{
								System.out.println("else iffffffffffffffffffffff");
								HttpSession session = request.getSession();
								session.setAttribute("d", d);
								RequestDispatcher rd=request.getRequestDispatcher("Doctorindex.jsp");
								System.out.println("forwarding");
								rd.forward(request,response);
							}
							else
							{
								System.out.println("elsssssssssssssssssssssssssssssseeeeeeeeeeeeeeeeee");
								PrintWriter out=response.getWriter();
								out.println("<h1> You are not verified Doctor yet! \nPlease register as a doctor and if registered please wait for our email. </h1>");
							}
						}
					}
				}
			}
			
			else
			{
				List<user> list=usermaster_dao.getAllusers();
				for(user u:list)
				{
					if(u.getEmail().equals(email))
					{
						if(u.getPassword().equals(password))
						{
							HttpSession session = request.getSession();
							session.setAttribute("u", u);
							RequestDispatcher rd=request.getRequestDispatcher("userindex2.jsp");
							System.out.println("forwarding");
							rd.forward(request,response);
						}
					}
				}
			}
		}
		*/
		else if(action.equalsIgnoreCase("sign_in"))
		{
			String enc_pass=null;
			String role=request.getParameter("user-type");
			String email=request.getParameter("email");
			System.out.println("emaillllllllllllllll iiiiiiiiiiisssss : " +email);
			//String password=request.getParameter("pass");
			String Password = request.getParameter("pass");
			try
			{
				enc_pass=usermaster_dao.doEncryption(Password);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println("Encryption..."+enc_pass);
			//um.setPassword(enc_pass);
			if(role.equalsIgnoreCase("doctor"))
			{
				List<Doctor> list=usermaster_dao.getAllDoctors();
				for(Doctor d:list)
				{
					if(d.getEmail().equals(email))
					{
						System.out.println("encpass is : " + enc_pass);
						System.out.println("d.getpass is : " + d.getPassword());
						
						if(enc_pass.equals(d.getPassword()))
						{
							System.out.println("active:" + d.getIsactive());
							System.out.println("verified:" + d.getIsverified());
							if(d.getIsactive().equalsIgnoreCase("not active") && d.getIsverified().equalsIgnoreCase("verified"))
							{
								
								System.out.println("will never happen iffffffffff");
								String role1="doctor";
								Random r=new Random();
								int otp=r.nextInt(1000000);
								System.out.println(otp);
								String otps=Integer.toString(otp);
								d.setOtp(otps);
								d.setIsactive("active");
								usermaster_dao.updatedoc(d);
								Services s=new Services();
								s.sendMail(d.getEmail(), otp);
								request.setAttribute("role1", role1);
								request.setAttribute("d", d);
								RequestDispatcher rd=request.getRequestDispatcher("otp.jsp");
								rd.forward(request,response);
							}
							else if(d.getIsactive().equalsIgnoreCase("active") && d.getIsverified().equalsIgnoreCase("verified"))
							{
								int count=0;
								List<Appointment> list1=usermaster_dao.getAllAppointment();
								for(Appointment a : list1)
								{
									if(a.getD().getDid()==d.getDid())
									{
										count+=1;
									}
								}
								request.setAttribute("count", count);
								System.out.println("else iffffffffffffffffffffff");
								HttpSession session = request.getSession();
								session.setAttribute("d", d);
								RequestDispatcher rd=request.getRequestDispatcher("Doctorindex.jsp");
								System.out.println("forwarding");
								rd.forward(request,response);
							}
							else
							{
								System.out.println("elsssssssssssssssssssssssssssssseeeeeeeeeeeeeeeeee");
								PrintWriter out=response.getWriter();
								out.println("<h1> You are not verified Doctor yet! \nPlease register as a doctor and if registered please wait for our email. </h1>");
							}
						}
					}
				}
			}
			
			else
			{
				System.out.println("in elseeeeeeeeeeeeeeeeeeeeeeeeee");
				List<user> list=usermaster_dao.getAllusers();
				for(user u:list)
				{
					if(u.getEmail().equals(email))
					{
						System.out.println("enc_pass is : " + enc_pass);
						System.out.println("u.getPassword is : " + u.getPassword());
						if(enc_pass.equals(u.getPassword()))
						{
							System.out.println("encopassssssssssssssssssssssss : " +enc_pass);
							user_master um=u.getUm();
							HttpSession session = request.getSession();
							session.setAttribute("um", um);
							RequestDispatcher rd=request.getRequestDispatcher("userindex2.jsp");
							System.out.println("forwarding");
							rd.forward(request,response);
						}
					}
				}
			}
		}
		
		else if(action.equalsIgnoreCase("view"))
		{
			System.out.println("view");
			System.out.println("id is : " +request.getParameter("did"));
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			request.setAttribute("d", d);
			RequestDispatcher rd=request.getRequestDispatcher("ADoctorfulldetails.jsp");
			rd.include(request, response);
		}
		
		else if(action.equalsIgnoreCase("verifydoctor"))
		{
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			d.setIsverified("verified");
			usermaster_dao.updatedoc(d);
			System.out.println("successfully verified");
			String linktologindoc="http://localhost:8080/E_Cure/login.jsp";
			Services s=new Services();
			s.loginmail(d.getEmail(), linktologindoc);
			RequestDispatcher rd=request.getRequestDispatcher("ADoctorNotification.jsp");
			rd.include(request, response);
		}
		
		else if(action.equalsIgnoreCase("Appointment"))
		{
			System.out.println("in Offlinebooking");
			String did=request.getParameter("did");
			String uid=request.getParameter("uid");
			Doctor d=usermaster_dao.getdocbyid(Integer.parseInt(did));
			user u=usermaster_dao.getuserbyid(Integer.parseInt(uid));
			user_master um=usermaster_dao.getusermasterbyid(Integer.parseInt(request.getParameter("umid")));
			String appdate=request.getParameter("appointdate");
			request.setAttribute("um", um);
			request.setAttribute("u", u);
			request.setAttribute("d", d);
			request.setAttribute("appdate", (String)appdate);
			System.out.println("apooi");
			RequestDispatcher rd=request.getRequestDispatcher("payment.jsp");
			rd.forward(request,response);
		}
		//edited

		else if(action.equalsIgnoreCase("onlinebooking"))
		{
			System.out.println("in Onlinebooking");
			String did=request.getParameter("did");
			String uid=request.getParameter("uid");
			//System.out.println("In con "+uid);
			Doctor d=usermaster_dao.getdocbyid(Integer.parseInt(did));			
			user u=usermaster_dao.getuserbyid(Integer.parseInt(uid));
			//System.out.println("in con u.getUid() "+u.getUid());
			Appointment a=new Appointment();
			a.setIssue(request.getParameter("issue"));
			
			/* edited liabrary also */
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
			   LocalDateTime now = LocalDateTime.now();  
			   System.out.println(dtf.format(now)); 
			   a.setAppoint_date(dtf.format(now));
			   a.setAppoint_time("online");
			   /* edited liabrary also */
			a.setD(d);
			a.setMode(request.getParameter("00:00"));
			a.setU(u);
			a.setD(d);
			usermaster_dao.insertappointment(a);
			request.setAttribute("u", u);
			request.setAttribute("d", d);
			request.setAttribute("a", a);
			//System.out.println("apooi");
			RequestDispatcher rd=request.getRequestDispatcher("payment.jsp");
			System.out.println("forwarding");
			rd.forward(request,response);
		}
		
		//editedend
		else if (action.equalsIgnoreCase("Paynow")) {
			
				Appointment a=new Appointment();
				System.out.println("Date ======================= " + request.getParameter("appointdate"));
				a.setAppoint_date(request.getParameter("appointdate"));
				a.setAppoint_time(request.getParameter("apptime"));
				a.setMode("Offline");
				a.setIssue("Offline");
				System.out.println("uid = " + request.getParameter("uid"));
				Doctor d=usermaster_dao.getdocbyid(Integer.parseInt(request.getParameter("did")));			
				user u=usermaster_dao.getuserbyid(Integer.parseInt(request.getParameter("uid")));
				user_master um=usermaster_dao.getusermasterbyid(Integer.parseInt(request.getParameter("umid")));
				a.setD(d);
				a.setU(u);
				usermaster_dao.insertappointment(a);
				response.sendRedirect("pgRedirect.jsp");
			
		}
		//edited
		
		else if (action.equalsIgnoreCase("viewissue")) {
			
			System.out.println("View Issue");
			int aid=Integer.parseInt(request.getParameter("aid"));	
			Appointment a=usermaster_dao.getappointmentbyid(aid);
			
			request.setAttribute("a", a);	
			System.out.println(a.getAapoint_id());
			RequestDispatcher rd=request.getRequestDispatcher("Prescription.jsp");
			rd.forward(request,response);
		}
		//edited end
	
		else if(action.equalsIgnoreCase("signinAdmin"))
		{
			String aemail=request.getParameter("admin_email");
			String apass=request.getParameter("admin_pass");
			List<Admin> list=usermaster_dao.getAllAdmin();
			for(Admin a : list)
			{
				if(a.getAdmin_email().equalsIgnoreCase(aemail))
				{
					if(a.getAdmin_pass().equalsIgnoreCase(apass))
					{
						HttpSession session = request.getSession();
						session.setAttribute("a", a);
						RequestDispatcher rd=request.getRequestDispatcher("Adminindex.jsp");
						System.out.println("forwarding");
						rd.forward(request,response);
					}
				}
			}
		}
		
		else if(action.equalsIgnoreCase("cancel"))
		{
			System.out.println("cancel");
			int aid=Integer.parseInt(request.getParameter("aid"));
			Appointment a=usermaster_dao.getappointmentbyid(aid);
			usermaster_dao.deleteappointment(a);
			System.out.println("deleted appointment");
		}
		
		else if(action.equalsIgnoreCase("update"))
		{
			System.out.println("update");
			int aid=Integer.parseInt(request.getParameter("aid"));
			Appointment a=usermaster_dao.getappointmentbyid(aid);
			usermaster_dao.deleteappointment(a);
			System.out.println("deleted appointment");
		}
		
		else if(action.equalsIgnoreCase("proceed"))
		{
			System.out.println("proceed");
			int aid=Integer.parseInt(request.getParameter("aid"));
			Appointment a=usermaster_dao.getappointmentbyid(aid);
			int did=Integer.parseInt(request.getParameter("did"));
			Doctor d=usermaster_dao.getdocbyid(did);
			request.setAttribute("d", d);
			request.setAttribute("a", a);
			RequestDispatcher rd=request.getRequestDispatcher("Prescription.jsp");
			System.out.println("forwarding");
			rd.forward(request,response);
		}
		
		else if(action.equalsIgnoreCase("ForgotPassword"))
		{
			System.out.println("ForgotPassword");
			RequestDispatcher rd=request.getRequestDispatcher("forgotemail.jsp");
			System.out.println("forwarding");
			rd.forward(request,response);
			
		}
		
		else if(action.equalsIgnoreCase("Send OTP"))
		{
			int flag=0;
			String email=request.getParameter("forgotemail");
			List<user> list=usermaster_dao.getAllusers();
			for(user u:list)
			{
				if(u.getEmail().equalsIgnoreCase(email))
				{
					flag=1;
					Random r=new Random();
					int otp=r.nextInt(1000000);
					System.out.println(otp);
					Services s=new Services();
					s.sendMail(u.getEmail(), otp);
					String otps=Integer.toString(otp);
					u.setOtp(otps);
					usermaster_dao.updateuser(u);
					/*int id=u.getUm().getId();
					user_master um=usermaster_dao.getusermasterbyid(id);
					um.setPassword(otps);
					usermaster_dao.updateusermaster(um);*/
					
					/*HttpSession session = request.getSession();*/
					request.setAttribute("otps", otps);
					request.setAttribute("u", u);
					RequestDispatcher rd=request.getRequestDispatcher("forgototp.jsp");
					System.out.println("forwarding");
					rd.forward(request, response);
				}
			}
			if(flag==0)
			{
				PrintWriter out=response.getWriter();
				out.println("<h3>Sorry this email address is not registered</h3>");
			}
		}
		
		else if(action.equalsIgnoreCase("Submit OTP"))
		{
			System.out.println("action controller- forgototpsubmit ");
			int id=Integer.parseInt(request.getParameter("id"));
			String receiveotp=request.getParameter("receiveotp");
			System.out.println("received otp is : " + receiveotp);
			user u=usermaster_dao.getuserbyid(id);
			if(u.getOtp().equalsIgnoreCase(receiveotp))
			{
				request.setAttribute("u", u);
				RequestDispatcher rd=request.getRequestDispatcher("forgotsetpassword.jsp");
				System.out.println("forwarding");
				rd.forward(request, response);
			}
		}
		
		else if(action.equalsIgnoreCase("Set Password"))
		{
			String newpass=request.getParameter("newpass");
			String cpass=request.getParameter("cpass");
			if(newpass.equalsIgnoreCase(cpass))
			{
				int uid=Integer.parseInt(request.getParameter("uid"));
				user u=usermaster_dao.getuserbyid(uid);
				int id=u.getUm().getId();
				user_master um=usermaster_dao.getusermasterbyid(id);
				try 
				{
					u.setPassword(usermaster_dao.doEncryption(newpass));
					um.setPassword(usermaster_dao.doEncryption(newpass));
					usermaster_dao.updateusermaster(um);
					usermaster_dao.updateuser(u);
				} 
				catch (Exception e) {
					e.printStackTrace();
				}
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				System.out.println("forwarding");
				rd.forward(request, response);
			}
		}
		
		else if(action.equalsIgnoreCase("resetpass"))
		{
			int uid=Integer.parseInt(request.getParameter("uid"));
			user u = usermaster_dao.getuserbyid(uid);
			request.setAttribute("u", u);
			RequestDispatcher rd=request.getRequestDispatcher("resetpassword.jsp");
			System.out.println("forwarding");
			rd.forward(request, response);
		}
		//edited
		else if(action.equalsIgnoreCase("prescriptionupload"))
		{
			int aapoint_id=Integer.parseInt(request.getParameter("aid"));
			int did=Integer.parseInt(request.getParameter("did"));
			String meds=request.getParameter("meds");
			System.out.println("meds is : " + meds);
			Doctor d=usermaster_dao.getdocbyid(did);
			Appointment a=usermaster_dao.getappointmentbyid(aapoint_id);
			System.out.println("Doc is " + d+" Apoint is "+a);
			PdfGen pdfgen=new PdfGen(d,a,meds);
		}
		//edited end
		
		else if(action.equalsIgnoreCase("Reset Password"))
		{
			int um_id=Integer.parseInt(request.getParameter("um_id"));
			user_master um = usermaster_dao.getusermasterbyid(um_id);
			String cur_pass=request.getParameter("cur_pass");
			System.out.println("cur_pass = " + cur_pass);
			String new_pass=request.getParameter("new_pass");
			String c_pass=request.getParameter("c_pass");
			try 
			{
				System.out.println("fname = " + um.getFname());
				System.out.println("um.getpass = " + um.getPassword());	
				System.out.println("cur_pass enc = " + usermaster_dao.doEncryption(cur_pass));
				if(um.getPassword().equals(usermaster_dao.doEncryption(cur_pass)))
				{
					System.out.println("in if");
					if(new_pass.equals(c_pass))
					{
						System.out.println(" newpass = " + usermaster_dao.doEncryption(new_pass));
						um.setPassword(usermaster_dao.doEncryption(new_pass));
						usermaster_dao.updateusermaster(um);
						if(um.getRole().equals("Patient"))
						{
							user u=usermaster_dao.getuserbyumid(um_id);
							u.setPassword(usermaster_dao.doEncryption(new_pass));
							usermaster_dao.updateuser(u);
							response.sendRedirect("login.jsp");
						}
						else
						{
							Doctor d=usermaster_dao.getdoctorbyumid(um_id);
							d.setPassword(usermaster_dao.doEncryption(new_pass));
							usermaster_dao.updatedoc(d);
							response.sendRedirect("login.jsp");
						}
					}
				}
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
		
		
		else if (action.equalsIgnoreCase("viewissue")) {
			
			System.out.println("View Issue");
			int aid=Integer.parseInt(request.getParameter("aid"));	
			Appointment a=usermaster_dao.getappointmentbyid(aid);
			
			request.setAttribute("a", a);	
			System.out.println(a.getAapoint_id());
			RequestDispatcher rd=request.getRequestDispatcher("Prescription.jsp");
			rd.forward(request,response);
		}
		
	}
	

	private String extractfilename(Part file) {
	    String cd = file.getHeader("content-disposition");
	    String[] items = cd.split(";");
	    for (String string : items) {
	        if (string.trim().startsWith("filename")) {
	            return string.substring(string.indexOf("=") + 2, string.length()-1);
	        }
	    }
	    return "";
	}
}
