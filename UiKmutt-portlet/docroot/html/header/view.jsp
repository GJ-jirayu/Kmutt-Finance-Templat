<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="javax.portlet.PortletRequest" %>
<%@page import="java.util.Map" %>


  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
	
.simply{
font:14px Trebuchet MS, Tahoma;
margin: 45px;
width: 1100px;
border-collapse: collapse;
text-align: left;
}
.simply th{
font:normal 16px Trebuchet MS, Tahoma;
color: #222;
background:#CC0000;
padding: 10px 8px;
border-bottom: 2px solid #ccc;
}
.simply td{
border-bottom: 1px solid #ccc;
color: #666;
background: #fff;
padding: 7px;
}
.simply tbody tr:hover td{
color: #222;
background: #FFFF99;
} 
  
  .modal-header, h4, .close {
  	  background-clip: padding-box;
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  
  .modal-footer {
      background-color: #f9f9f9;
  }
  img.set-pointer{
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
  #myFund{
  	left: 38%;
    max-height: 900px;
    width: 900px;
  }	

</style>
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

<h2><center>Header</h2><br>
	ค้นหา : <input type="text" name="search" id="keySearch" placeholder="ค้นหา">
	&nbsp;
	<input class="btn btn-info" type="submit" id="btnSearch" value="ค้นหา	">
	&nbsp;
	<!-- <img src = "/Kmutt-portlet/image/add1.png" width = 35px; higth = 35px; onClick = 'clickAdd("#demo")'>   -->
	<img class="set-pointer" src = /UiKmutt-portlet/image/add1.png width = 30px; height = 30px;  onClick='ClickAction("add")'/>
	
	<div id="demo" style="display: none;">
		<table id="tablehead" width=100%>
			<tr>
				<td>
					<h4>&nbsp;Add Header</h4>
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
<!-- <div class="container">	 -->	
<table class="table table-hover">
	 <thead>
      <tr>
        <th width = "10%">ID</th>
        <th width = "58%">Name</th>
        <th width = "10%"><center>Add Detail</center></th>
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
				งบ1
			</td>
			<td>
				<center><img class="set-pointer" src = /UiKmutt-portlet/image/adddetail.png width = 30px; height = 30px;  onClick='ClickActionDetail("add")'/></center>
			</td>
			<td>
				<center><img class="set-pointer" src = /UiKmutt-portlet/image/edit.png width = 30px; height = 30px;  onClick='ClickActionEdit("edit")'/></center>
			</td>
			<td>
				<center><img class="set-pointer" src = /UiKmutt-portlet/image/delete4.png width = 30px; higth = 30px; onClick = 'clickDelete("delete")'></center>
			</td>
		</tr>
		<tr>
			<td>
				2
			</td>
			<td>
				งบ2
			</td>
			<td>
				<center><img class="set-pointer" src = /UiKmutt-portlet/image/adddetail.png width = 30px; height = 30px;  onClick='ClickActionDetail("add")'/></center>
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/edit.png width = 30px; higth = 30px; onClick = 'clickEdit("#demo2")'></center>
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/delete4.png width = 30px; higth = 30px; onClick = 'clickDelete(("#demo")'></center>
			</td>
		</tr>
		<tr>
			<td>
				3
			</td>
			<td>
				งบ3
			</td>
			<td>
				<center><img class="set-pointer" src = /UiKmutt-portlet/image/adddetail.png width = 30px; height = 30px;  onClick='ClickActionDetail("add")'/></center>
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/edit.png width = 30px; higth = 30px; onClick = 'clickEdit("#demo3")'></center>
			</td>
			<td>
				<center><img src = /Kmutt-portlet/image/delete4.png width = 30px; higth = 30px; onClick = 'clickDelete(("#demo")'></center>
			</td>
		</tr>
		
        </div>
      </div>
    </div>
 
	</tbody>
</table>

<table class="table table-striped">
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
	<tbody>
		<tr>
			<td>
				1
			</td>	
			<td>
				งบ1
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
			 	<center><a class="set-pointertext"  onClick='ClickActionEditDetail("edit")' >EE รอแบบของเม ACc.</a></center>
			</td>
			<td>
			 	<center><img class="set-pointer" src = /UiKmutt-portlet/image/F52.png width = 27px; height = 27px; onClick='ClickActionFund("manage")'></center>
			</td>
			<td>
			 	<center><img class="set-pointer" src = /UiKmutt-portlet/image/B52.png width = 27px; height = 27px; onClick='ClickActionBudget("manage")'></center>
			</td>
			<td>
				<center><img class="set-pointer" src = /UiKmutt-portlet/image/edit.png width = 30px; height = 30px;  onClick='ClickActionEditDetail("edit")'/></center>
			</td>
			<td>
				<center><img class="set-pointer" src = /UiKmutt-portlet/image/delete4.png width = 30px; higth = 30px; onClick = 'clickDelete("delete")'></center>
			</td>
		</tr>
	</tbody>
</table>
										<!-- start add header alert model -->
<div class="container">
  <!-- Modal -->
  <div  class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3><span class="glyphicon glyphicon-lock"></span>Add Header</h3>
        </div>
        
        <div  class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              Name : 
              <input type="text" class="form-control" id="name" placeholder="Enter Name">
            </div>
              <!-- <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button> -->
          </form>
        </div>
        
        <div class="modal-footer">    	
        	<center><button type="submit" class="btn btn-primary "  class="glyphicon glyphicon-remove"> บันทึก</button>
          	<button type="submit" class="btn btn-danger btn-default" data-dismiss="modal"> <span class="glyphicon glyphicon-remove"></span>  ยกเลิก</button></center>
        	
        <!-- <p>Not a member? <a href="#">Sign Up</a></p>
        <p>Forgot <a href="#">Password?</a></p> -->
        </div>
      </div>      
    </div>    
  </div> 
</div>
											<!-- end add header alert model -->
											<!-- start edit header alert model -->
<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModalEdit" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3><span class="glyphicon glyphicon-lock"></span>Edit Header</h3>
        </div>
        
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              Name : 
              <input type="text" class="form-control" id="name" placeholder="Enter Name">
            </div>
              <!-- <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button> -->
          </form>
        </div>
        
        <div class="modal-footer">    	
        	<center><button type="submit" class="btn btn-primary "  class="glyphicon glyphicon-remove"> บันทึก</button>
          	<button type="submit" class="btn btn-danger btn-default" data-dismiss="modal"> <span class="glyphicon glyphicon-remove"></span>  ยกเลิก</button></center>
        	
        <!-- <p>Not a member? <a href="#">Sign Up</a></p>
        <p>Forgot <a href="#">Password?</a></p> -->
        </div>
      </div>      
    </div>    
  </div> 
</div>
											<!-- end edit header alert model -->
											<!-- start add detail alert model -->
<div class="container">
  <!-- Modal -->
  <div style="display:none" class="modal fade" id="myDetail" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3><span class="glyphicon glyphicon-lock"></span>Add Detail</h3>
        </div>
        
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              Level ID :<span style="padding-left:45px"></span>
              <input type="text" class="form-control" id="name" placeholder="Enter Level ID">
              <span style="padding-left:26px"></span>
              Item Group :<span style="padding-left:44px"></span>
              <select>
              	<option>Select</option>
              	<option>EI</option>
              	<option>EE</option>
              </select>
            </div>
            <div class="form-group">
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
            </div>
            <div class="form-group">
              	Parent ID :	<span style="padding-left:37px"></span>
              <input type="text" class="form-control" id="name" placeholder="Enter Parent ID">
            </div>
            <div class="form-group">
              	Net total Group : 
              <input type="text" class="form-control" id="name" placeholder="Enter Net total Group">
            </div>
            
              <!-- <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button> -->
          </form>
        </div>
        
        <div class="modal-footer">    	
        	<center><button type="submit" class="btn btn-primary "  class="glyphicon glyphicon-remove"> บันทึก</button>
          	<button type="submit" class="btn btn-danger btn-default" data-dismiss="modal"> <span class="glyphicon glyphicon-remove"></span>  ยกเลิก</button></center>
        	
        <!-- <p>Not a member? <a href="#">Sign Up</a></p>
        <p>Forgot <a href="#">Password?</a></p> -->
        </div>
      </div>      
    </div>    
  </div> 
</div>
										<!-- end add detail alert model -->
										<!-- start edit detail alert model -->
<div class="container">
  <!-- Modal -->
  <div style="display:none" class="modal fade" id="editDetail" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3><span class="glyphicon glyphicon-lock"></span>Edit Detail</h3>
        </div>
        
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              Level ID :<span style="padding-left:45px"></span>
              <input type="text" class="form-control" id="name" placeholder="Enter Level ID">
              <span style="padding-left:26px"></span>
              Item Group :<span style="padding-left:44px"></span>
              <select>
              	<option>Select</option>
              	<option>EI</option>
              	<option>EE</option>
              </select>
            </div>
            <div class="form-group">
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
            </div>
            <div class="form-group">
              	Parent ID :	<span style="padding-left:37px"></span>
              <input type="text" class="form-control" id="name" placeholder="Enter Parent ID">
            </div>
            <div class="form-group">
              	Net total Group : 
              <input type="text" class="form-control" id="name" placeholder="Enter Net total Group">
            </div>
            
              <!-- <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button> -->
          </form>
        </div>
        
        <div class="modal-footer">    	
        	<center><button type="submit" class="btn btn-primary "  class="glyphicon glyphicon-remove"> บันทึก</button>
          	<button type="submit" class="btn btn-danger btn-default" data-dismiss="modal"> <span class="glyphicon glyphicon-remove"></span>  ยกเลิก</button></center>
        	
        <!-- <p>Not a member? <a href="#">Sign Up</a></p>
        <p>Forgot <a href="#">Password?</a></p> -->
        </div>
      </div>      
    </div>    
  </div> 
</div>
										<!-- end edit detail alert model -->
										<!-- start fund alert model -->
<div class="container">
  <!-- Modal -->
  <div style="display:none" class="modal fade" id="myFund" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3><span class="glyphicon glyphicon-lock"></span>Fund</h3>
        </div>
        
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              	Srart Fund : <span style="padding-left:0px"></span>
              <input type="text" class="form-control" id="t1" ><!-- placeholder="Example 100" -->
            </div>
            <div class="form-group">
              	End Fund :	<span style="padding-left:6px"></span>
              <input type="text" class="form-control" id="t2"> <!-- placeholder="Example 300" -->
            </div><br>
            <table class = table table-striped>
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
	            			งบ1
	            		</td>
	            		<td>
	            			100
	            		</td>
	            		<td>
	            			300
	            		</td>
	            		<td>
	            		<center><img class="set-pointer" src = /UiKmutt-portlet/image/edit.png width = 30px; higth = 30px; onClick = 'buttonEdit("edit")'></center>
	            		</td>
	            		<td>
	            		<center><img class="set-pointer" src = /UiKmutt-portlet/image/delete4.png width = 30px; higth = 30px; onClick = 'clickDelete("delete")'></center>
	            		</td>
	            	</tr>
            	</tbody>
            </table>
          </form>
        </div>
        
        <div class="modal-footer">    	
        	<center><button type="submit" class="btn btn-primary "  class="glyphicon glyphicon-remove"> บันทึก</button>
          	<button type="submit" class="btn btn-danger btn-default" data-dismiss="modal" id="exitfund"> <span class="glyphicon glyphicon-remove"></span>  ยกเลิก</button></center>
        	
        <!-- <p>Not a member? <a href="#">Sign Up</a></p>
        <p>Forgot <a href="#">Password?</a></p> -->
        </div>
      </div>      
    </div>    
  </div> 
</div>
										<!-- end add detail alert model -->
			

 

</body>


