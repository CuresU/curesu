package com.dao;

import java.security.Key;
import java.util.List;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.beans.Admin;
import com.beans.Appointment;
import com.beans.Doctor;
import com.beans.contact;
import com.beans.user;
import com.beans.user_master;
import com.paytm.pg.App;
/*import com.util.Doctorutil;*/
import com.util.user_masterutil;

public class usermaster_dao {
	
	public static List<Admin> getAllAdmin()
	{
		
		Session session=user_masterutil.createsession();
		List<Admin> list=session.createQuery("from Admin").list();
		return list;
	
	} 
	
	public static List<Appointment> getAllAppointment()
	{
		
		Session session=user_masterutil.createsession();
		List<Appointment> list=session.createQuery("from Appointment").list();
		return list;
	
	}
	
	public static List<user_master> getAllusermasters()
	{
		
		Session session=user_masterutil.createsession();
		List<user_master> list=session.createQuery("from user_master").list();
		return list;
	
	}
	

	public static void insertusermaster(user_master um)
	{
		System.out.println("dao");
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.save(um);
		tr.commit();
		session.close();
	}
	
	public static void insertuser(user u)
	{
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.save(u);
		tr.commit();
		session.close();
	}
	
	public static void registerdoctor(Doctor d)
	{
			System.out.println("dao");
			Session session=user_masterutil.createsession();
			Transaction tr=session.beginTransaction();
			session.save(d);
			tr.commit();
			session.close();
	}
	
	public static List<user> getAllusers()
	{
		
			Session session=user_masterutil.createsession();
			List<user> list=session.createQuery("from user").list();
			session.close();
			return list;
		
	}
	public static List<Doctor> getAllDoctors()
	{
		Session session=user_masterutil.createsession();
		List<Doctor> list=session.createQuery("from Doctor").list();
		session.close();
		return list;
	}
	
	public static Doctor getdocbyid(int did)
	{
		Session session=user_masterutil.createsession();
		Doctor d=session.get(Doctor.class, did);
		session.close();
		return d;
	}
	
	public static void updatedoc(Doctor d)
	{
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.update(d);
		tr.commit();
		session.close();
	}
	public static void deleteDoc(Doctor id)
	{
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.delete(id);
		tr.commit();
		session.close();
	}
	
	public static user getuserbyid(int uid)
	{
		Session session=user_masterutil.createsession();
		user u=session.get(user.class, uid);
		session.close();
		return u;
	}
	
	
	public static void updateuser(user u)
	{
		System.out.println("in dao before update");
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.update(u);
		System.out.println("in dao after update");
		tr.commit(); 
		session.close();
	}
	
	public static void insertappointment(Appointment a)
	{
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.save(a);
		tr.commit();
		session.close();
	}
	public static void updateappointment(Appointment a)
	{
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.update(a);
		tr.commit();
		session.close();
	}
	public static Appointment getappointmentbyid(int aapoint_id)
	{
		Session session=user_masterutil.createsession();
		Appointment a=session.get(Appointment.class, aapoint_id);
		session.close();
		return a;
	}
	
	public static void deleteappointment(Appointment a)
	{
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.delete(a);
		tr.commit();
		session.close();
	}

	public static user_master getusermasterbyid(int id)
	{
		Session session=user_masterutil.createsession();
		user_master um=session.get(user_master.class, id);
		session.close();
		return um;
	}
	
	public static void updateusermaster(user_master um)
	{
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.update(um);
		tr.commit();
		session.close();
	}
	
	
	
	public static List<contact> getallcontacts()
	{
		Session session=user_masterutil.createsession();
		List<contact> list=session.createQuery("from contact").list();
		session.close();
		return list;
	}

	public static void feedback(contact c) {
		Session session=user_masterutil.createsession();
		Transaction tr=session.beginTransaction();
		session.save(c);
		tr.commit();
		session.close();
	}
	
	public static user getuserbyumid(int id)
	{
		Session session=user_masterutil.createsession();
		Query query=session.createQuery("from user where um = :id");
		query.setInteger("id", id );
		user u=(user) query.uniqueResult();
		session.close();
		return u;
	}
	
	public static Doctor getdoctorbyumid(int id)
	{
		Session session=user_masterutil.createsession();
		Query query=session.createQuery("from Doctor where um = :id");
		query.setInteger("id", id );
		Doctor d=(Doctor) query.uniqueResult();
		session.close();
		return d;
	}
	
	public static List<Appointment> getappointmentbyidanddate(int id,String date)
	{
		Session session=user_masterutil.createsession();
		Query query=session.createQuery("from Appointment where d = :id AND appoint_date = :date");
		query.setInteger("id", id );
		query.setString("date", date);
		List<Appointment> list= (List<Appointment>) query.list();
		session.close();
		return list;
	}
	
	public static boolean getappointmentbyid_date_time(int id,String date,String time)
	{
		Session session=user_masterutil.createsession();
		Query query=session.createQuery("from Appointment where d = :id AND appoint_date = :date AND appoint_time =:time");
		query.setInteger("id", id );
		query.setString("date", date);
		query.setString("time", time);
		Appointment a=(Appointment)query.uniqueResult();
		session.close();
		if(a!=null)
			return false;
		else
			return true;
	}
	
	public static String doEncryption(String password) throws Exception{
		String enc_pass=null;
		try 
		{
			Key key=new SecretKeySpec("cures_u0".getBytes(), "DES");
			Cipher ed=Cipher.getInstance("DES/ECB/PKCS5Padding");
			byte[] plain=password.getBytes();
			ed.init(Cipher.ENCRYPT_MODE,key);
			byte[] cipher=ed.doFinal(plain);
			enc_pass=new String(cipher).trim();

		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return enc_pass;
	}
}
