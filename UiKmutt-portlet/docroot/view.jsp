<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="javax.portlet.PortletRequest" %>
<%@page import="java.util.Map" %>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        #scrollToTop, #scrollToBottom
        {
             cursor:pointer;
             background-color:#0090CB;
             display:inline-block;
             height:40px;
             width:40px;
             color:#fff;
             font-size:16pt;
             text-align:center;
             text-decoration:none;
             line-height:40px;
        }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type = "text/javascript">
        $(function () {
        
        	
            $('#scrollToBottom').bind("click", function () {
                $('html, body').animate({ scrollTop: $(document).height() }, 1200);
                return false;
            });
            $('#scrollToTop').bind("click", function () {
                $('html, body').animate({ scrollTop: 0 }, 1200);
                return false;
            });
        });
    </script>
</head>
<body>
<div align = "right">
<a href="javascript:;" id="scrollToBottom">&#x25BC;</a>
</div>
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
<div align = "right">
<a href="javascript:;" id="scrollToTop">&#x25B2;</a>
</div>
</body>
</html>
