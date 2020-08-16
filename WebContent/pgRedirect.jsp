<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="paytm_java.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>    
<%
Random r  = new Random();
int r1 = r.nextInt(10000000);
String merchantMid = "JGdKLy60175996680868";
//Key in your staging and production MID available in your dashboard
String merchantKey = "iQzCKrnOW_A9KY1B";
//Key in your staging and production merchant key available in your dashboard
String orderId = "order"+r1;
String channelId = "WEB";
String custId = "cust123";
String mobileNo = "9998418277";
String email = "curesu003@gmail.com";
String txnAmount = "500";
System.out.println(txnAmount);
String website = "WEBSTAGING";
//This is the staging value. Production value is available in your dashboard
String industryTypeId = "Retail";
//This is the staging value. Production value is available in your dashboard
String callbackUrl = "http://localhost:8080/E_Cure/pgResponse.jsp";
TreeMap<String, String> paytmParams = new TreeMap<String, String>();
paytmParams.put("MID",merchantMid);
paytmParams.put("ORDER_ID",orderId);
paytmParams.put("CHANNEL_ID",channelId);
paytmParams.put("CUST_ID",custId);
paytmParams.put("MOBILE_NO",mobileNo);
paytmParams.put("EMAIL",email);
paytmParams.put("TXN_AMOUNT",txnAmount);
paytmParams.put("WEBSITE",website);
paytmParams.put("INDUSTRY_TYPE_ID",industryTypeId);
paytmParams.put("CALLBACK_URL", callbackUrl);
String paytmChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(merchantKey, paytmParams);
StringBuilder outputHtml = new StringBuilder();
outputHtml.append("<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>");
outputHtml.append("<html>");
outputHtml.append("<head>");
outputHtml.append("<title>Merchant Checkout Page</title>");
outputHtml.append("</head>");
outputHtml.append("<body>");
outputHtml.append("<center><h1>Please do not refresh this page...</h1></center>");

outputHtml.append("<form method='post' action='https://securegw-stage.paytm.in/theia/processTransaction' name='f1'>");
for(Map.Entry<String,String> entry : paytmParams.entrySet()) {
outputHtml.append("<input type='hidden' name='"+entry.getKey()+"' value='"+entry.getValue()+"'>");
}
outputHtml.append("<input type='hidden' name='CHECKSUMHASH' value='"+paytmChecksum+"'>");
outputHtml.append("</form>");
outputHtml.append("<script type='text/javascript'>");
outputHtml.append("document.f1.submit();");
outputHtml.append("</script>");
outputHtml.append("</body>");
outputHtml.append("</html>");
out.println(outputHtml);
%>
