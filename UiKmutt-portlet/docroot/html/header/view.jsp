<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="javax.portlet.PortletRequest" %>
<%@page import="java.util.Map" %>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script> 
<script type="text/javascript">

function clickEdit(elid) {
	if ($(".subdiv").is(":visible")){
		$(".subdiv").slideToggle( "slow" );
	}
	if ($(elid).is(":visible")) {         
		return false;						
	} else {								
		$(elid).slideToggle( "slow" );      	    
	}
}

function clickAdd(elid) {
	if ($(elid).is(":visible")) {
		return false;
	} else {
		$(elid).slideToggle("slow");
	}
}

function clickCancel(elid) {
	if ($(elid).is(":visible")) {
		$(elid).slideToggle("slow");;
	} else {
		
	}
}
</script>
<portlet:defineObjects />
<% 
	Map uMap = (Map) renderRequest.getAttribute(PortletRequest.USER_INFO);
	String givenName = (uMap != null) ? (String)uMap.get("user.name.given") : "";
%>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<script src="../../js/main.js"></script>
  	
  	<style type="text/css">
  		table#tablehead{
		    background-image: -o-linear-gradient(top, #fafafa, #e1e1e1);
			background-image: -moz-linear-gradient(top, #fafafa, #e1e1e1);
			background-image: -webkit-gradient(linear, left top, left bottom, from(#fafafa), to(#e1e1e1));
			filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#fafafa’, endColorstr=’#e1e1e1′);
		    border-radius:12px;    
  		}
  	</style>
  	
</head>

<%-- <body> givenName: <%=givenName %> --%>

<h2><center>Budget Type</h2><br>
	ค้นหา : <input type="text" name="search" id="keySearch" placeholder="ค้นหา">
	&nbsp;
	<input class="btn btn-info" type="submit" id="btnSearch" value="ค้นหา	">
	&nbsp;
	<img src = "/Kmutt-portlet/image/add1.png" width = 35px; higth = 35px; onClick = 'clickAdd("#demo")'>  
	
	<div id="demo" style="display: none;">
		<table id="tablehead" width=100%>
			<tr>
				<td>
					<h3>&nbsp;Add Budget Type</h3>
					&nbsp;ชื่อ : <input type="text" name="name" id="name" placeholder="กรอกข้อมูล"><br><br>
					<center>
						<input class="btn btn-primary" type="submit" id="btnAdd" value="ตกลง">&nbsp;
						<input class="btn btn-danger" type="submit" id="btnCancel" value="ยกเลิก" onClick = 'clickCancel("#demo")'>
					</center>
				</td>
			</tr>
		</table>
		<br>
	</div>
<div class="container">		
<table class="table table-striped">
	 <thead>
      <tr>
        <th width = "10%">ID</th>
        <th width = "70%">Name</th>
        <th width = "10%"><center>Edit</center></th>
        <th width = "10%"><center>Delete</center></th>
      </tr>
    </thead>
	<tbody id='list'>
		<tr>
			<td>
				1
			</td>
			<td>
				Test
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/edit.png width = 30px; higth = 30px; onClick = 'clickEdit("#demo1")'></center>
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/delete4.png width = 30px; higth = 30px; onClick = 'clickDelete("#demo")'></center>
			</td>
		</tr>
			<div>
				<tr style="display: none;" id="demo1" class = "subdiv">
					<td colspan="4">
						<h3>&nbsp;Edit Budget Type</h3>
							&nbsp;ชื่อ : <input type="text" name="name" id="name" placeholder="กรอกข้อมูล"><br><br>
							<center>
								<input class="btn btn-primary" type="submit" id="btnAdd" value="ตกลง">&nbsp;
								<input class="btn btn-danger" type="submit" id="btnCancel" value="ยกเลิก" onClick = 'clickCancel("#demo1")'>
							</center>		
					</td>
				</tr>
			</div>
		<tr>
			<td>
				2
			</td>
			<td>
				Test2
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/edit.png width = 30px; higth = 30px; onClick = 'clickEdit("#demo2")'></center>
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/delete4.png width = 30px; higth = 30px; onClick = 'clickEdit("#demo")'></center>
			</td>
		</tr>
			<div>
				<tr style="display: none;" id="demo2" class = "subdiv">
					<td colspan="4">
						<h3>&nbsp;Edit Budget Type</h3>
							&nbsp;ชื่อ : <input type="text" name="name" id="name" placeholder="กรอกข้อมูล"><br><br>
							<center>
								<input class="btn btn-primary" type="submit" id="btnAdd" value="ตกลง">&nbsp;
								<input class="btn btn-danger" type="submit" id="btnCancel" value="ยกเลิก" onClick = 'clickCancel("#demo2")'>
							</center>		
					</td>
				</tr>
			</div>
		<tr>
			<td>
				3
			</td>
			<td>
				Test3
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/edit.png width = 30px; higth = 30px; onClick = 'clickEdit("#demo3")'></center>
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/delete4.png width = 30px; higth = 30px; onClick = 'clickEdit("#demo")'></center>
			</td>
		</tr>
			
	</tbody>
</table>
</div>
</body>