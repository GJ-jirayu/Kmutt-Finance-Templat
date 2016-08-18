<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<script>
function toggle() {
 if( document.getElementById("hidethis").style.display=='none' ){
   document.getElementById("hidethis").style.display = '';
 }else{
   document.getElementById("hidethis").style.display = 'none';
 }
}
</script>
<style>
	.simply{
		width: 700px;
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
</style>
<table class="simply">
<!-- Table header -->
    <thead>
        <tr>
        <th scope="col">หัวตาราง1</th>
        <th scope="col">หัวตาราง2</th>
        </tr>
    </thead>
    <!-- Table footer-->
        <tfoot>
       <tr>
            <td>ท้ายตาราง1</td>
        <td>ท้ายตาราง2</td>
        </tr>
    </tfoot>
<!-- Table body -->
    <tbody>
        <tr>
            <td>เซลล์1</td>
        <td>เซลล์2</td>
        </tr>
        <tr>
            <td>เซลล์3</td>
        <td>เซลล์4</td>
        </tr>
    </tbody>
</table>    
