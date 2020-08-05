package com.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.beans.Admin;
import com.beans.Appointment;
import com.beans.Doctor;
import com.beans.contact;
import com.beans.user;
import com.beans.user_master;

public class user_masterutil {

	public static Session createsession()
	{
		System.out.println("util");
		SessionFactory sf=new Configuration().addAnnotatedClass(user_master.class).addAnnotatedClass(user.class)
				.addAnnotatedClass(Doctor.class)
				.addAnnotatedClass(Appointment.class)
				.addAnnotatedClass(Admin.class)
				.addAnnotatedClass(contact.class)
				.configure()
				.buildSessionFactory();		
		Session session=sf.openSession();		
		return session;
	}
}
