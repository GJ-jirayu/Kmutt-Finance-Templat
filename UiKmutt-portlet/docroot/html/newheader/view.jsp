<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="javax.portlet.PortletRequest" %>
<%@page import="java.util.Map" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type = "text/javascript">
	$(function () {
		
		$(".scrollToBottom").click(function() {
    	    $('html, body').animate({
    	        scrollTop: $("#tabledetails").offset().top
    	    }, 700);
    	});
		
		$(".solltabledev").click(function() {
    	    $('html, body').animate({
    	        scrollTop: $("#myDev").offset().top
    	    }, 1000);
    	});
		
		$('.scrollToTop').bind("click", function () {
			$('html, body').animate({ scrollTop: 0 }, 700);  
			return false;
		});
		
	});
</script>

<style>  
	.modal-header, h4, .close {
		background-clip: padding-box;
		background-color: #5cb85c;
		color:white !important;
		text-align: center;
		font-size: 30px;
	}
  
	img.set-pointer{
		cursor: pointer;
	}
	
	tbody.set-pointer{
		cursor: pointer;
	}
	
	a.set-pointertext{
		cursor: pointer;
	}
	
	#myDetail{
		left: 38%;
		max-height: 900px;
		width: 900px;
	}	
	
	#editDetail{
		left: 38%;
		max-height: 900px;
		width: 900px;
	}
	
	#accitemgroup{
		margin: auto;
		width: 900px;
	}
  
</style>

<portlet:defineObjects />

<body>
<div id="container">
	<h1> First Page. </h1>
	<button onClick="callDetaillPage()"> call Detail </button>
</div>
<%-- <% 
	Map uMap = (Map) renderRequest.getAttribute(PortletRequest.USER_INFO);
	String givenName = (uMap != null) ? (String)uMap.get("user.name.given") : "";
%> --%>
<%-- <body> givenName: <%=givenName %> --%>
<!-- 
<h2><center>Header</center></h2>
<button id="delcheck" style="display: none;" class = "btn-danger">Delete</button>
ค้นหา : <input type="text" name="search" id="keySearch" placeholder="ค้นหา">&nbsp;

<img class="set-pointer" src = /UiKmutt-portlet/images/search.png width = 26px; height = 26px;  onClick='ClickActionSearch("")'/>&nbsp;

<img class="set-pointer" src = /UiKmutt-portlet/images/add.png width = 28px; height = 28px;  onClick='ClickAction("#header")'/>
	
<div id="header" style="display: none;">
	<table id="tablehead" width=100%>
		<tr>
			<td>
				<h4>&nbsp;Add Header</h4><br>
				<span style="padding-left:26px"></span>
				ชื่อ : <input type="text" name="name" id="name" placeholder="กรอกข้อมูล"><br><br>
				<center>
					<input class="btn btn-primary" type="submit" id="btnAdd" value="ตกลง">&nbsp;
					<input class="btn btn-danger" type="submit" id="btnCancel" value="ยกเลิก" onClick = 'clickCancel("#header")'>
				</center>
			</td>
		</tr>
	</table>
	<br>
</div>
	
<div id="editheader" style="display: none;">
	<table id="tablehead" width=100%>
		<tr>
			<td>
				<h4>&nbsp;Edit Header</h4><br>
				<span style="padding-left:26px"></span>
				ชื่อ : <input type="text" name="name" id="name" placeholder="กรอกข้อมูล"><br><br>
				<center>
					<input class="btn btn-primary" type="submit" id="btnAdd" value="ตกลง">&nbsp;
					<input class="btn btn-danger" type="submit" id="btnCancel" value="ยกเลิก" onClick = 'clickCancel("#editheader")'>
				</center>
			</td>
		</tr>
	</table>
	<br>
</div>

										START ADD DETAIL
										
<div style="display:none" id="myAddDetail">
	<table id="tablehead" width=100%>
		<tr>
			<td>
				<h4 colspan="2">&nbsp;Add Detail</h4><br>
				<span style="padding-left:26px"></span>
				Level ID :<span style="padding-left:45px"></span>
				<input type="text" class="form-control" id="name" placeholder="Enter Level ID">
				
				<span style="padding-left:26px"></span>
				Item Group :<span style="padding-left:44px"></span>
				<select>
					<option>Select</option>
					<option>EI</option>
					<option>EE</option>
				</select>
				<br>
        				
        		<span style="padding-left:26px"></span>
        		Level Line ID : <span style="padding-left:14px"></span>
              	<input type="text" class="form-control" id="name" placeholder="Enter Level Line ID">
        		
        		<span style="padding-left:26px"></span>
	        	Start/End.Account : 
				<select>
					<option>All</option>
					<option>400021 - 400040</option>
					<option>400041 - 400050</option>
					<option>400050 - 400150</option>
				</select>
				<br>
		            	
				<span style="padding-left:26px"></span>
				Parent ID :	<span style="padding-left:37px"></span>
				<input type="text" class="form-control" id="name" placeholder="Enter Parent ID">
				<br>

				<span style="padding-left:26px"></span>
				Net total Group : 
				<input type="text" class="form-control" id="name" placeholder="Enter Net total Group">
				<br>
				<br>
				<center>
				<input class="btn btn-primary" type="submit" id="btnAdd" value="ตกลง">&nbsp;
				<input class="btn btn-danger" type="submit" id="btnCancel" value="ยกเลิก" onClick = 'clickCancel("#myAddDetail")'>
				</center>		
        	</td>
        </tr>
	</table>
	<br> 	
</div>					<span style="padding-left:26px"></span> โค้ดเว้นวรรค

										END ADD DETAIL
										
										START TABLE HEADER
									
<div class="table table-striped">	
	<table class="table table-hover" >
		<thead>
			<tr>
				<th>Test</th>
				<th width = "10%">ID</th>
				<th width = "58%">Name</th>
				<th width = "10%"><center>Add Detail</center></th>
				<th width = "10%"><center>Edit</center></th>
				<th width = "10%"><center>Delete</center></th>
			</tr>
		</thead>
		<tbody class="set-pointer">
			<tr>
				<td>
					1
				</td>
				<td class="scrollToBottom" onClick = 'clickDown("#tabledetails")'>
					<a class="set-pointertext">	
						งบกำไร-ขาดทุน1
					</a>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/adddetail.png width = 28px; height = 29px;  onClick='ClickActionDetail("#myAddDetail")'/></center>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/edited.png width = 33px; height = 33px;  onClick='ClickActionEdit("#editheader")'/></center>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/delete.png width = 33px; higth = 33px; onClick = 'clickDelete("delete")'></center>
				</td>
			</tr>
			<tr>
				<td>
					2
				</td>
				<td class="scrollToBottom" onClick = 'clickDown("#tabledetails")'>
					<a class="set-pointertext">	
						งบกำไร-ขาดทุน2
					</a>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/adddetail.png width = 28px; height = 29px;  onClick='ClickActionDetail("#myAddDetail")'/></center>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/edited.png width = 33px; height = 33px;  onClick='ClickActionEdit("edit")'/></center>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/delete.png width = 33px; higth = 33px; onClick = 'clickDelete("delete")'></center>
				</td>
			</tr>
			<tr>
				<td>
					3
				</td>
				<td class="scrollToBottom" onClick = 'clickDown("#tabledetails")'>
					<a class="set-pointertext">	
						งบกำไร-ขาดทุน3
					</a>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/adddetail.png width = 28px; height = 29px;  onClick='ClickActionDetail("#myAddDetail")'/></center>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/edited.png width = 33px; height = 33px;  onClick='ClickActionEdit("edit")'/></center>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/delete.png width = 33px; higth = 33px; onClick = 'clickDelete("delete")'></center>
				</td>
			</tr>
		</tbody>
	</table>
</div>
									END TABLE HEADER
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<table class="table table-hover" id="myDev">
		<thead>
			<tr>
				<th>Test</th>
				<th width = "10%">ID</th>
				<th width = "58%">Name</th>
				<th width = "10%"><center>Add Detail</center></th>
				<th width = "10%"><center>Edit</center></th>
				<th width = "10%"><center>Delete</center></th>
			</tr>
		</thead>
		<tbody class="set-pointer">
			<tr>
				<td>
					1
				</td>
				<td class="scrollToBottom" onClick = 'clickDown("#tabledetails")'>
					<a class="set-pointertext">	
						Test Up
					</a>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/adddetail.png width = 28px; height = 29px;  onClick='ClickActionDetail("#myAddDetail")'/></center>
				</td>
				<td>
					<center><img class="scrollToTop" src = /UiKmutt-portlet/images/edited.png width = 33px; height = 33px;  onClick='ClickActionEdit("#editheader")'/></center>
				</td>
				<td>
					<center><img class="set-pointer" src = /UiKmutt-portlet/images/delete.png width = 33px; higth = 33px; onClick = 'clickDelete("delete")'></center>
				</td>
			</tr>
		</tbody>
</table>
									START EDIT DETAIL
									
<div style="display:none" id="myEditDetail" >
	<table width=100%  class = table myDev>
		<tr>
			<td>
				<h4 colspan="2">&nbsp;Edit Detail</h4><br>
				<span style="padding-left:26px"></span>
				Level ID :<span style="padding-left:45px"></span>
				<input type="text" class="form-control" id="name" placeholder="Enter Level ID">
				
				<span style="padding-left:26px"></span>
				Item Group :<span style="padding-left:44px"></span>
				<select>
					<option>Select</option>
					<option>EI</option>
					<option>EE</option>
				</select>
				<br>
				
				<span style="padding-left:26px"></span>
				Level Line ID : <span style="padding-left:14px"></span>
				<input type="text" class="form-control" id="name" placeholder="Enter Level Line ID">
				
				<span style="padding-left:26px"></span>
				Start/End.Account : 
				<select>
					<option>All</option>
					<option>400021 - 400040</option>
					<option>400041 - 400050</option>
					<option>400050 - 400150</option>
				</select>
				<br>
				
				<span style="padding-left:26px"></span>
				Parent ID :	<span style="padding-left:37px"></span>
				<input type="text" class="form-control" id="name" placeholder="Enter Parent ID">
				<br>
				
				<span style="padding-left:26px"></span>
				Net total Group : 
				<input type="text" class="form-control" id="name" placeholder="Enter Net total Group">
				<br>
				<br>
				
				<center>
				<input class="btn btn-primary" type="submit" id="btnAdd" value="ตกลง">&nbsp;
				<input class="btn btn-danger" type="submit" id="btnCancel" value="ยกเลิก" onClick = 'clickCancel("#myEditDetail")'>
				</center>
			</td>
		</tr>
	</table>
	<br>
</div>

										END EDIT DETAIL
										
											START FUND
<div style="display:none" id="myFund" >
	<table id="tablehead" width=100%>
		<tr>
			<td>
				<h4>Fund</h4>
				Start Fund : <span style="padding-left:0px"></span>
				<input type="text" class="form-control" id="t1">
				<br>
				
				End Fund :	<span style="padding-left:6px"></span>
				<input type="text" class="form-control" id="t2"> 
			</td>
		</tr>
	</table> 
	<table class = table myDev>
		<thead>
			<tr>
				<th>
					ID
				</th>
				<th>
					Name
				</th>
				<th>
					Start Fund
				</th>
				<th>
					Start Fund
				</th>
				<th>
					<center>Edit</center>
				</th>
				<th>
					<center>Delete</center>
				</th>
			</tr>
		</thead>
		<tbody>
            <tr>
				<td>
					1
				</td>
				<td>
					งบกำไร-ขาดทุน1
				</td>
				<td>
					100
				</td>
				<td>
					300
				</td>
				<td>
					<center><img class="set-pointer" src = /UiKmutt-portlet/images/edited.png width = 30px; higth = 30px; onClick = 'buttonEdit("edit")'></center>
				</td>
				<td>
					<center><img class="set-pointer" src = /UiKmutt-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'clickDelete("delete")'></center>
				</td>
			</tr>           	
		</tbody>
	</table>
	<center>
		<button type="submit" class="btn btn-primary "  class="glyphicon glyphicon-remove"> บันทึก</button>
		<button type="submit" class="btn btn-danger btn-default"  id="exitfund" onClick = 'clickCancel("#myFund")'> ยกเลิก</button>
	</center>
</div >

											END FUND
											
									START ACCOUNT ITEM GROUP
									
<div style="display:none" id="accitemgroup" >	
<img src = "/UiKmutt-portlet/images/cancel2.png" data-toggle="tooltip" title="ยกเลิกตาราง" class="set-pointer" width = 22px; higth = 22px; onClick = 'clickUp("#accitemgroup")'>					
	<table class="table table-striped" >
		<thead id="tblHead">
			<tr>
				<th colspan = "4"><h4>ACCOUNT ITEM GROUP</h4></th>
			</tr>
			<tr>
				<th width = "10%"><center>ID</center></th>
				<th width = "50%"><center>Name Account</th></center>
				<th width = "20%"><center>Account Start</center></th>
				<th width = "20%"><center>Account End</center></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><center>1</center></td>
				<td>EE</td>
                <td><center>001</center></td>
                <td><center>005</center></td>
			</tr>
			<tr>
              	<td><center>2</center></td>
                <td>EE</td>
                <td><center>006</center></td>
                <td><center>010</center></td>
			</tr>  
		</tbody>
	</table>
</div>

									END ACCOUNT ITEM GROUP
								
										TABLE DETAIL		
										
<div class="table table-striped" id="tabledetails" style="display: none;">
	<img src = "/UiKmutt-portlet/images/cancel2.png" data-toggle="tooltip" title="ยกเลิกตาราง" class="set-pointer" width = 22px; higth = 22px; onClick = 'clickUp("#tabledetails")'>
	<table class="table table-hover">
		<thead>
			<tr>
				<td>
					ID
				</td>	
				<td width="30%">
					<center>Name</center>
				</td>
				<td>
					<center>Level ID</center>
				</td>
				<td>
					<center>Level Line ID</center>
				</td>
				<td>
					<center>Parent ID</center>
				</td>
				<td>
					<center>Net total Group</center>
				</td>
				<td>
				 	<center>Item Group</center>
				</td>
				<td>
				 	<center>Fund</center>
				</td>
				<td>
				 	<center>Budget</center>
				</td>
				<td>
					<center>Edit</center>
				</td>
				<td>
					<center>Delete</center>
				</td>
			</tr>
		</thead>
		<tbody class="set-pointer">
			<tr>
				<td>
					1
				</td>	
				<td>
					งบกำไร-ขาดทุน1 
				</td>
				<td>
					<center>11</center>
				</td>
				<td>
					<center>12</center>
				</td>
				<td>
					<center>21</center>
				</td>
				<td>
					<center>Net total Group</center>
				</td>
				<td>
				 	<center><a class="set-pointertext" onClick='ClickActionAccIG("#accitemgroup")'>EE</a></center>
				</td>
				<td>
				 	<center><img class="solltabledev" src = /UiKmutt-portlet/images/F52.png width = 27px; height = 27px; onClick='ClickActionFund("#myFund")'></center>
				</td>
				<td>
				 	<center><img class="set-pointer" src = /UiKmutt-portlet/images/B52.png width = 27px; height = 27px; onClick='ClickActionBudget("manage")'></center>
				</td>
				<td>
					<center><img class="solltabledev" src = /UiKmutt-portlet/images/edited.png width = 30px; height = 30px;  onClick='ClickActionEditDetail("#myEditDetail")'/></center>
				</td>
				<td>
					<center><img class="set-pointer" src = /UiKmutt-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'clickDelete("delete")'></center>
				</td>
			</tr>
			<tr>
				<td>
					1
				</td>	
				<td>
					งบกำไร-ขาดทุน1 
				</td>
				<td>
					<center>11</center>
				</td>
				<td>
					<center>13</center>
				</td>
				<td>
					<center>31</center>
				</td>
				<td>
					<center>Net total Group</center>
				</td>
				<td>
				 	<center><a class="set-pointertext"  onClick='ClickActionFund("#accitemgroup")' >EE</a></center>
				</td>
				<td>
				 	<center><img class="set-pointer" src = /UiKmutt-portlet/images/F52.png width = 27px; height = 27px; onClick='ClickActionFund("manage")'></center>
				</td>
				<td>
				 	<center><img class="set-pointer" src = /UiKmutt-portlet/images/B52.png width = 27px; height = 27px; onClick='ClickActionBudget("manage")'></center>
				</td>
				<td>
					<center><img class="set-pointer" src = /UiKmutt-portlet/images/edited.png width = 30px; height = 30px;  onClick='ClickActionEditDetail("edit")'/></center>
				</td>
				<td>
					<center><img class="set-pointer" src = /UiKmutt-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'clickDelete("delete")'></center>
				</td>
			</tr>
		</tbody>
	</table>
</div> -->

											<!-- END TABLE DETAIL -->	
</body>