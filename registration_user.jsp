<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</title>

<script type="text/javascript">

function valid()
{
var aa=document.s.un.value;
if(aa=="")
{
alert("Enter Name");
document.s.un.focus();
return false;
}
if((document.s.gen[0].checked==false)&&(document.s.gen[1].checked==false))
{
alert("Select Gender");
document.s.un.focus();
return false;
}

var db=document.s.dob.value;
if(db=="")
{
alert("Enter The Date Of Birth");
document.s.dob.focus();
return false;
}

var k = document.s.mob.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mob.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mob.focus();
return false;
}

if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mob.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.eid.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.eid.focus();
return false;
}

var ad = document.s.ad.value;
if(ad=="")
{
alert("Enter Address");
document.s.ad.focus();
return false;
}

var a=document.s.uid.value;
if(a=="")
{
alert("Enter User ID");
document.s.uid.focus();
return false;
}
var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}


}

</script>




</head>

<body>
<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 
	 
	 
	 String alphabet="MOBVCXZPNWIEURYTKSLAHFJDGQ";
	int character=(int)(Math.random()*26);
	String s=alphabet.substring(character, character+4);
	//System.out.println(s);
	
	int y=100+(int)(Math.random()*1000);

	String z=s+y;
	session.setAttribute("z1",z);
	 
	 %>


<div id="container">
		<div id="mainpic">
        	<h1>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</h1>
            
        </div>   
        
        <div id="menu">
        	<ul>
            	<li class="menuitem"><a href="index.jsp">Back</a></li>
               <!-- <li class="menuitem"><a href="#">About</a></li>
                <li class="menuitem"><a href="#">Products</a></li>
                <li class="menuitem"><a href="#">Services</a></li>
                <li class="menuitem"><a href="#">Design</a></li>
              <li class="menuitem"><a href="#">Contact</a></li>-->
            </ul>
        </div>
        
		<div id="content">
        	<h2>&nbsp; </h2>
       	  <h3>&nbsp;</h3>
		  
		  <table width="800">
			<tr>
			<td>
			<fieldset>
			<table width="500" height="300">
			<tr>
			<td>
			
			<form name="s" action="register1_user.jsp" method="post" onsubmit="return valid()" enctype="multipart/form-data">
            <table align="center" cellpadding="5" cellspacing="5" width="420" border="0">
              <tr> 
			  <tr>
            <td colspan="2" align="center"><strong><font color="#FF3300" size="+1" face="Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Newuser Registration</font></strong></td>
          </tr>
                <td colspan="2" align="center">&nbsp;</td>
              </tr>
            
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Name</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="un" class="b"></td>
              </tr>
			
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Gender</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="gen" value="male" class="b">Male&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="radio" name="gen" value="female" class="b">Female</td>
              </tr>
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>DOB</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="dob" class="b"></td>
              </tr>
              
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Mobile</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mob" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Email ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="eid" class="b"></td>
              </tr>
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Address</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="ad"></textarea></td>
              </tr>
			  
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>User ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uid" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Password</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass"></td>
              </tr>
			  
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Profile Image</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="file" name="fil" class="b"></td>
              </tr>
			  
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Date</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="date" class="b" value="<%=strDateNew1%>"></td>
              </tr>
              <tr> 
              <tr> 
                <td></td>
                <td><input type="submit" name="s" value="submit" class="b1" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <input type="reset" name="r" value="clear" class="b1"></td>
              </tr>
            </table>
          </form>
			
			</td>
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			</td>
			<td>
			<fieldset> 
			<table width="200" height="300" border="0">
			<tr>
			<td><font size="2"><b> 
                  <%
                   String message=request.getParameter("message");
                   if(message!=null && message.equalsIgnoreCase("success"))
                    {
                    out.println("<font color='red'><blink>Registered Successfully !</blink></font>");
					
                    }
                  %>
                  </b></font></td>
				  </tr>
			<tr>
			<td align="justify"><p align="center"><img src="images/reg.jpg" />
			</td>
			</tr>
			</table>
			</fieldset>
			</td>
			</tr>
			</table>
			
        	<br />
			<br />
            
            <div id="footer">
			 </div>
      </div>
   </div>
</body>
</html>
