
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>JustMedi- Your Medical Buddy</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");
		if (sds == null) {
			alert("You are using a free package.\n You are not allowed to remove the tag.\n");
		}
	}
</script>
<head>
<SCRIPT LANGUAGE="JavaScript">
	function dil(form) {
		for (var i = 0; i < form.elements.length; i++) {
			if (form.elements[i].value == "") {
				alert("Fill out all Fields")
				document.F1.productname.focus()
				return false
			}
		}
		if (!isNaN(document.F1.productname.value)) {
			alert("productname  must  be  char's & can't be null")
			document.F1.productname.value = ""
			document.F1.productname.focus()
			return false
		}

		if (isNaN(document.F1.minq.value)) {
			alert("min quanty of order field must  be  number & can't be null")
			document.F1.minq.value = ""
			document.F1.minq.focus()
			return false
		}
		if (isNaN(document.F1.orderq.value)) {
			alert("Ordering Qty field must  be  number & can't be null")
			document.F1.orderq.value = ""
			document.F1.orderq.focus()
			return false
		}

		if (isNaN(document.F1.netcost.value)) {
			alert("Netcost field must  be  number & can't be null")
			document.F1.netcost.value = ""
			document.F1.netcost.focus()
			return false
		}
		if (!isNaN(document.F1.usname.value)) {
			alert("username field must  be character & can't be null")
			document.F1.usname.value = ""
			document.F1.usname.focus()
			return false
		}

		return true
	}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");

	}
</script>
<body>
	<div id="header">
		<div id="navigation">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="admin.jsp">ADMINISTRATOR </a></li>
				<li><a href="distributer.jsp">DISTRIBUTER </a></li>
				<li><a href="customer.jsp">CUST0MER</a></li>
				<li><a href="contactus.jsp">Contact Us</a></li>
			</ul>
		</div>
	</div>

	<table width="960" border="0" cellspacing="10" cellpadding="0"
		align="center">
		<%
			
		%>


		<tr align="justify">
			<td valign="top" width="220px"><img
				src="images/hioxindia-pharmacy_08.jpg" alt="" border="0" /> <br />
				<h1>Pharmaceutist</h1>
				<p>Freedesignertemplates.com has a wide collection of HTML web
					design templates.</p>
				<p align="right">
					<a href="#" class="more">View More</a>
				</p></td>
			<td valign="top">
				<%-- <table cellspacing="10" cellpadding="8">	--%> <%
 	
 %>
				<table>
					<%
						//out.print("<td><tr><a href='disselectord.jsp'>Click to select your order</a></tr></td>");

					try {
						Connection con = GetCon.getCon();
						PreparedStatement ps = con.prepareStatement("Select * from DISTRIBUTERPROD");
						//ps.setString(1,uname);
						ResultSet rs = ps.executeQuery();

						//out.print("<td><a href='disselectord.jsp'>Click to select your order</a></td>");

						out.print(
						"<tr><th>id</th><th>prodcode</th><th>productname</th><th>Manufacturing Date</th><th>Manufacture detail</th><th>Expiry</th><th>Minq</th><th>Totalq</th><th>cost/prod</th><th>Username</th></tr>");
						while (rs.next()) {
							int id = rs.getInt(1);
							session.setAttribute("id", id);
							out.print("<tr>");
							out.print("<td>" + rs.getString(1) + "</td>");
							out.print("<td>" + rs.getString(2) + "</td>");
							out.print("<td>" + rs.getString(3) + "</td>");
							out.print("<td>" + rs.getString(4) + "</td>");
							out.print("<td>" + rs.getString(5) + "</td>");
							out.print("<td>" + rs.getString(6) + "</td>");
							out.print("<td>" + rs.getDouble(7) + "</td>");
							out.print("<td>" + rs.getDouble(8) + "</td>");
							out.print("<td>" + rs.getDouble(9) + "</td>");
							out.print("<td>" + rs.getString(10) + "</td>");

							//out.print("<td>" DeleteServlet.Del`"</td>");

							out.print("</tr>");
						}

						//out.print("</table>");
						//out.print("<table>");

						//out.print("</table>");
					} catch (SQLException e) {
						e.printStackTrace();
					}
					%>
				</table>
				<%
					
				%> <%@ page import="java.sql.*"%> <%@ page
					import="java.io.*"%> <%@ page
					import="javax.servlet.*"%> <%@ page
					import="com.kingbomm.*"%> <%--  <td valign="top">
    	<img src="images/hioxindia-pharmacy_10.jpg" alt="" border="0" />
        <h1>Drug Store</h1>
      <p>Anyone can use these HTML templates just by replacing the content to the pre-existing site designs.</p>
        <p align="right"><a href="#" class="more">View More</a></p>
    </td>--%>
			<td valign="top"><img src="images/hioxindia-pharmacy_12.jpg"
				alt="" border="0" />
				<h1>Tablets</h1>
				<p>This high quality free pharmaceutical company template is
					built using XHTML and CSS..</p>
				<p align="right">
					<a href="#" class="more">View More</a>
				</p></td>

		</tr>
		<tr>
			<td colspan="4" style="border-bottom: 1px solid #CCCCCC;"></td>
		</tr>
	</table>


	<div id="content">
		<table width="960" border="0" cellspacing="0" cellpadding="0">
			<tr align="justify">
				<td width="200" valign="top"><img
					src="images/hioxindia-pharmacy_19.jpg" alt="" border="0" /></td>
				<td width="760" valign="top">
					<h1>Welcome to Pharmaceutical Company</h1>
					<p>This is free Pharmaceutical Company Template for your online
						website, blog or web page which is under Health and Medicine
						category. Anyone wants good, professional, template for their
						pharmacy, drug store, medical store then this template would be
						the best one. This free pharmaceutical company template is
						designed by professional designers to make your task much easier
						to customize it.</p>
					<br />

					<p>There are many other template categories like Arts,
						Agriculture, Computers, Satellite, Cars, Finance, Nature, Music,
						Personal Website, Religious, Fashion, Furniture, Holiday, Travel,
						Night club are available in this site. Have a look at the
						collection of HTML templates, pick the right one, preview and
						download it easily.</p>
				</td>
			</tr>
		</table>
	</div>

	<div id="footer">
		<div id="footer_1">
			<ul>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
			</ul>
			<br /> <span id="design">Designed by <a id="dum" href="#"
				target="_blank">The Knights of AOT under the guidance of Prof.
					Subhankar Roy</a></span>
			<script type="text/javascript">
				document.onload = ctck();
			</script>
		</div>
	</div>
</body>
</html>


