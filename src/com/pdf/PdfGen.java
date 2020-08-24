package com.pdf;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Random;

import javax.swing.GroupLayout.Alignment;
import javax.swing.border.Border;

import com.beans.Appointment;
import com.beans.Doctor;
import com.dao.usermaster_dao; 
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.LineSeparator;
import com.itextpdf.text.pdf.draw.VerticalPositionMark;


public class PdfGen 
{
	public PdfGen()
	{
		
	}
	public PdfGen(Doctor d,Appointment a,String meds)
	{

        try 
        {
        	String dname="Dr. " + d.getFname() + " " + d.getLname();
        	Random r=new Random();
			int rno=r.nextInt(1000000);
			System.out.println(rno);
        	String pdfname="CuresU" + Integer.toString(a.getAapoint_id());        	
        	       	
        	String a1=pdfname+".pdf";
        	System.out.println(a1);
        	
            OutputStream file = new FileOutputStream(new File("D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\prescriptions\\" + pdfname + ".pdf"));
            System.out.println("file "+file);
            Document document = new Document();
            PdfWriter.getInstance(document, file);
			
            
            //Inserting Image in PDF
            document.open();
		     
	     Image img = Image.getInstance ("D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\logo\\logo.jpg"); 
		     img.scaleAbsolute(70f, 40f);//image width,height	
		     document.add(img);		     

						document.add(Chunk.NEWLINE);   //Something like in HTML 🙂
						//document.add(image);
						Chunk glue = new Chunk(new VerticalPositionMark());
						
						LineSeparator ls = new LineSeparator();		                
		                
		                Paragraph p0=new Paragraph();
		                //p0.add(new Chunk(glue));
		                p0.add(dname);
		                document.add(p0);
		                
		                Paragraph p=new Paragraph();
		                p.add(new Chunk(glue));
		                p.add(d.getC_name());
		                document.add(p);
		                
		                Paragraph p1=new Paragraph();
		                p1.add(new Chunk(glue));
		                p1.add(d.getC_address());
		                document.add(p1);
		                
		                Paragraph p2=new Paragraph();
		                p2.add(new Chunk(glue));
		                p2.add(d.getCity());
		                document.add(p2);
		                
		                Paragraph p3=new Paragraph();
		                p3.add(new Chunk(glue));
		                p3.add(d.getC_contact());
		                document.add(p3);
		                
		         
		                document.add(new Chunk(ls));		                
		                document.add(new Paragraph("Patient Name: "+a.getU().getFname()+" "+a.getU().getLname().toString()));
		                document.add(new Paragraph("Age: "+a.getU().getAge() .toString()));
		                
		                document.add(new Paragraph("Issues: "));		                
		                PdfPTable table=new PdfPTable(1);
		                PdfPCell cell = new PdfPCell();
		                cell.setBorder(Rectangle.NO_BORDER);
		   			  	//cell.setPadding (12.0f); 
		   			  	cell.setBackgroundColor(new BaseColor (140, 221,8));
		   			  	table.addCell(a.getIssue().toString());
		   			  	document.add(table);
		   			  	
		   			  	document.add(new Paragraph("Medicines: "));
		   			  	document.add(new Paragraph(" "));
		   			  	PdfPTable table1=new PdfPTable(1);
		   			  	PdfPCell cell1 = new PdfPCell();
		   			  	cell1.setBorder(Rectangle.NO_BORDER);
		   			  	//cell1.setPadding (12.0f); 
		   			  	cell1.setBackgroundColor(new BaseColor (140, 221,8));
		   			  	table1.addCell(meds.toString());
		   			  	document.add(table1);
		                
		   			  	document.add(new Paragraph(" "));
		   			  	Paragraph p4=new Paragraph();
		   			  	p4.add(new Chunk(glue));
		   			  	p4.add(new Date().toString());
		   			  	document.add(p4);
		   			  	
		   			  	document.close();
		   			  	file.close();
				        
		   			  	a.setPrescription(a1);
				        usermaster_dao.updateappointment(a);
				        System.out.println("Pdf created successfully..");

        	} 
        	catch (Exception e) 
        	{
	            e.printStackTrace();
	        }
	    }
	}
        