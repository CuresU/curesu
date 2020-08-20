package com.pdf;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Random;

import com.beans.Appointment;
import com.beans.Doctor;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


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
        	System.out.println(dname);
        	String dadd=d.getC_address() + ", " + d.getLandmark() + ", " + d.getCity() + ", " + d.getState() + "- " + d.getPincode();
        	System.out.println(dadd);
        	String ddate="Date: " + a.getAppoint_date();
        	System.out.println(ddate);
        	String dpres="Prescribed to: " + a.getU().getFname() + " " + a.getU().getLname();
        	System.out.println(dpres);
        	String medpre="Medicine Prescribed: ";
        	System.out.println("pdfgen");
        	Random r=new Random();
			int rno=r.nextInt(1000000);
			System.out.println(rno);
        	String pdfname="CuresU" + Integer.toString(a.getAapoint_id());
        	System.out.println(pdfname);
        	System.out.println(meds);
            OutputStream file = new FileOutputStream(new File("D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\prescriptions\\" + pdfname + ".pdf"));
            System.out.println("file "+file);
            Document document = new Document();
            PdfWriter.getInstance(document, file);
			
            
            //Inserting Image in PDF

		    // Image image = Image.getInstance ("src/com/pdf/java4s.png");
//            Image image = Image.getInstance ("D:\\Daiict\\Sem_2\\IP\\E_Cure\\WebContent\\logo\\logog like.png");
//		     image.scaleAbsolute(550f, 60f);//image width,height	

		     
			//Inserting Table in PDF

		     PdfPTable table=new PdfPTable(2);

                     PdfPCell cell = new PdfPCell (new Paragraph ("CuresU"));

			      cell.setColspan (2);
			      cell.setHorizontalAlignment (Element.ALIGN_CENTER);
			      cell.setPadding (10.0f);
			      cell.setBackgroundColor (new BaseColor (140, 221, 8));					               
			      /*cell.setBorderColor("#FFFFFF");*/
			      table.addCell(cell);						               

			      table.addCell(" ");
			      table.addCell(dname);
			      table.addCell(" ");
			      table.addCell(dadd);
			      table.addCell(" ");
                  table.addCell(ddate);
			      table.addCell(dpres);
			      table.addCell(" ");
			      table.addCell(medpre);
			      table.addCell(" ");
			      table.addCell(meds);
			      table.addCell(" ");
			      table.setSpacingBefore(30.0f);       // Space Before table starts, like margin-top in CSS
			      table.setSpacingAfter(30.0f);        // Space After table starts, like margin-Bottom in CSS
			     
			      
			//Inserting List in PDF

			      /*List list=new List(true,30);
		          list.add(new ListItem("Java4s"));
			      list.add(new ListItem("Php4s"));
			      list.add(new ListItem("Some Thing..."));		
*/
			      
			//Text formating in PDF
	                Chunk chunk=new Chunk("");

					chunk.setUnderline(+1f,-2f);//1st co-ordinate is for line width,2nd is space between
					Chunk chunk1=new Chunk("");
					chunk1.setUnderline(+4f,-8f);
					chunk1.setBackground(new BaseColor (17, 46, 193));      
					
					//Now Insert Every Thing Into PDF Document
			         document.open();//PDF document opened........			       

							//document.add(image);

						document.add(Chunk.NEWLINE);   //Something like in HTML 🙂
						//document.add(image);
	                    document.add(new Paragraph("Dear Customer"));
		                document.add(new Paragraph("Document Generated On - "+new Date().toString()));	
		                //document.add(new Paragraph("<center><h1>CuresU<h1></center>"));
						document.add(table);

						document.add(chunk);
						document.add(chunk1);

						document.add(Chunk.NEWLINE);   //Something like in HTML 🙂							    

	       				//document.newPage();            //Opened new page

						//document.add(list);            //In the new page we are going to add list

			         document.close();

				             file.close();

	            System.out.println("Pdf created successfully..");

        	} 
        	catch (Exception e) 
        	{
	            e.printStackTrace();
	        }
	    }
	}
        