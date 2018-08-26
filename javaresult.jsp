<%@page import="java.sql.*"%>

<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
<form action="Showresult.jsp" method="post">

<% 
String q1=request.getParameter("q1");
String q2=request.getParameter("q2");
String q3=request.getParameter("q3");
//out.println("<h>fetch="+q1+"</h>");
//out.println("<h>fetch="+q2+"</h>");
//out.println("<h>fetch="+q3+"</h>");
String q4=request.getParameter("q4");
String q5=request.getParameter("q5");
//out.println("<h>fetch="+q4+"</h>");
//out.println("<h>fetch="+q5+"</h>");


  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","root");
Statement st=con.createStatement();
String sql="select * from java";
 int marks=0;
 int count=0;
ResultSet rs=st.executeQuery(sql);

if(rs.next())
{	  
String qno1=rs.getString("Question");
//out.println("<h>fetch="+qno1+"</h>");
String qno2=rs.getString("Question");
String qno3=rs.getString("Question");
String qno4=rs.getString("Question");
String qno5=rs.getString("Question");

	
		if(q1.equals(rs.getString("Answer")))
     {
         count++;
         marks=marks+10;
     }
  
if(rs.next())
 {
     if(q2.equals(rs.getString("Answer")))
     {
     	
         count++;
         marks=marks+10;
     }
 }
if(rs.next())
 {
     if(q3.equals(rs.getString("Answer")))
     {
         count++;
         marks=marks+10;
     } 
 } 
if(rs.next())
 {
     if(q4.equals(rs.getString("Answer")))
     {
         count++;
         marks=marks+10;
     } 
 }
if(rs.next())
	
 {
	
     if(q5.equals(rs.getString("Answer")))
     {
         count++;
         marks=marks+10;
     }
     
 } 


if(marks>=20)
{
	int total=marks;
	 out.println(" <h>Your total correct answer is = "+count+"</h><br>");
	 out.println("<h>your total marks is-->"+marks+"</h><br>");
	 out.println("<h style=color:red>Congratulation, you are eligible for the next round Thankyou</h><br>");
	 session.setAttribute( "total", total );  
	 session.setAttribute( "attempt", count );  
}
else{
	  out.println(" <h>Your total correct answer is = "+count+"</h><br>");
	  out.println("<h>your total marks is-->"+marks+"</h><br>");
	
	  out.println("<h>Sorry you are fail</h><br>");
}
session.setAttribute("remark", count);
//out.println("<button <a href='Showresult.jsp'>Click here for show result</button></a>");


session.setAttribute( "Ques1", qno1 );
session.setAttribute("Ques2",qno2);
session.setAttribute("Ques3",qno3);
session.setAttribute("Ques4",qno4);
session.setAttribute("Ques5",qno5);
}
%>

</form>
</body>
</html>