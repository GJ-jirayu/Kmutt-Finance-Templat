<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="javax.portlet.PortletRequest" %>
<%@page import="java.util.Map" %>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">

	var $records = $('#json-records'),
	myRecords = JSON.parse($records.text());
	$('#my-final-table').dynatable({
		dataset: {
			records: myRecords
		}
	});
	
</script>

<table id="my-final-table">
  <thead>
    <th>Band</th>
    <th>Song</th>
  </thead>
  <tbody>
  </tbody>
</table>

