<%@page import="java.util.*"%>
<%@page contentType="text/html" language="java" import="java.sql.*"%>
<html>

<title>Online Exam Server</title>
<style type="text/css">
   body{background-color:black;font-family:courier;color:blue}
</style>
<head>
<form method="post">
<script language="javascript">
var Timer;
var TotalSeconds;

function CreateTimer(TimerID, Time) 
{
    Timer = document.getElementById(TimerID);
    TotalSeconds = Time;
    UpdateTimer()
    window.setTimeout("Tick()", 1000);
}

function Tick() 
{
    TotalSeconds -= 1;
    if(TotalSeconds ==-1)
      {
    alert("Time Up");
    // Show alert Plus redirect any other page
      }
   else
     {
    UpdateTimer()
    window.setTimeout("Tick()", 1000);
     }
}

function UpdateTimer() {
    Timer.innerHTML = TotalSeconds;
}
</script>
</head>
<body>
 Duration:=> 5 Minutes only...!!!
<form>

<h2 style="text-align:center">ONLINE EXAMINATION</h2>
<h2 style="text-align:center"><i>All questions are compulsory</i></h2>

<p>
<a href="studentdashboard1.jsp">Back To Main Page</a>
</p>
<hr/>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM php");
int i=1;
 if(rs.next())
 {       
                       
                      %>
                      <table>
                        ** Qno:<%=rs.getString("id")%>.<%=rs.getString("Question") %>?  **
                          <tr><td><input type="radio" name="q1" value=<%=rs.getString("A")%> /><%=rs.getString("A")%></td><td><input type="radio" name="q1" value=<%=rs.getString("C")%> /><%=rs.getString("C")%></td></tr>
                          <tr><td><input type="radio" name="q1" value=<%=rs.getString("B")%> /><%=rs.getString("B")%></td><td><input type="radio" name="q1" value=<%=rs.getString("D")%> /><%=rs.getString("D")%></td></tr>
                      </table>
           
<hr>                     
                            <%
                            
                            if(rs.next())
                            {                         
                           
                            %>
                          <table>
                           **  Qno:<%=rs.getString("id")%>.<%=rs.getString("Question") %>?  **
                              <tr><td><input type="radio" name="q2" value=<%=rs.getString("A")%> /><%=rs.getString("A")%></td><td><input type="radio" name="q2" value=<%=rs.getString("C")%> /><%=rs.getString("C")%></td></tr>
                              <tr><td><input type="radio" name="q2" value=<%=rs.getString("B")%> /><%=rs.getString("B")%></td><td><input type="radio" name="q2" value=<%=rs.getString("D")%> /><%=rs.getString("D")%></td></tr>
                          </table>
                          <hr>
                            <%
                            }   
                            if(rs.next())
                            {
                           
                          %>
                          <table>
                           **  Qno:<%=rs.getString("id")%>.<%=rs.getString("Question") %>? **
                              <tr><td><input type="radio" name="q3" value=<%=rs.getString("A")%> /><%=rs.getString("A")%></td><td><input type="radio" name="q3" value=<%=rs.getString("C")%> /><%=rs.getString("C")%></td></tr>
                              <tr><td><input type="radio" name="q3" value=<%=rs.getString("B")%> /><%=rs.getString("B")%></td><td><input type="radio" name="q3" value=<%=rs.getString("D")%> /><%=rs.getString("D")%></td></tr>
                          </table>
                          <hr>
                      
                          <%
                            }
                          if(rs.next())
                          {
                         
                        %>
                        <table>
                         **  Qno:<%=rs.getString("id")%>.<%=rs.getString("Question") %>? **
                            <tr><td><input type="radio" name="q4" value=<%=rs.getString("A")%> /><%=rs.getString("A")%></td><td><input type="radio" name="q4" value=<%=rs.getString("C")%> /><%=rs.getString("C")%></td></tr>
                            <tr><td><input type="radio" name="q4" value=<%=rs.getString("B")%> /><%=rs.getString("B")%></td><td><input type="radio" name="q4" value=<%=rs.getString("D")%> /><%=rs.getString("D")%></td></tr>
                        </table>
                        <hr>
                          <%
                          }
                          if(rs.next())
                          
                         
                          {
                        %>
                         <table>
                         **  Qno:<%=rs.getString("id")%>.<%=rs.getString("Question") %>?  **
                           <tr><td><input type="radio" name="q5" value=<%=rs.getString("A")%> /><%=rs.getString("A")%></td><td><input type="radio" name="q5" value=<%=rs.getString("C")%> /><%=rs.getString("C")%></td></tr>
                           <tr><td><input type="radio" name="q5" value=<%=rs.getString("B")%> /><%=rs.getString("B")%></td><td><input type="radio" name="q5" value=<%=rs.getString("D")%> /><%=rs.getString("D")%></td></tr>
                        </table>
                              <hr>
                             
                            
                          <%
                          }
                             
                         else
                         {
                          %>
                            <p style="font-size: 30px;">........Finished......</p>
                          
                          <%
                          }
                          }
 i++;
                          %> 
                              
                      <input  formaction="phpresult.jsp" type="submit" value="submit" style="font-size: 25px; background-color: aqua; border-style: solid; width: 90px; margin-right: 20px; border-radius: 10px; border-color: red;" />
                     
                     <br> <h3>Remaining Time</h3>    
                        </form>
                         <div id='timer' />   
<script type="text/javascript">window.onload = CreateTimer("timer", 300);</script>                 
                        
                        </body>
                        </html>