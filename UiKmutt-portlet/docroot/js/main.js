$(document).ready(function(){
/*	$("#myBtn").click(function(){
	    $("#myModal").modal();
	});*/
	$('[data-toggle="tooltip"]').tooltip();   
	
	$('input:checkbox').removeAttr('checked');
});
	
	function buttonEdit(actType){
		alert("Edit");
		$("#t1").val("100");
		$("#t2").val("300");
	}
	$("#exitfund").click(function(){
        $("#t1").val("");
        $("#t2").val("");
    });

	function ClickAction(elid) {
		if ($("#myAddDetail").is(":visible")) {
			$("#myAddDetail").toggle(500);
		}
		if ($("#editheader").is(":visible")) {
			$("#editheader").toggle(500);
		}
		
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}

	function clickCancel(elid) {
		if ($(elid).is(":visible")) {
			$(elid).toggle(400);
			
		} else {
			return false;
		}
	}
	
	function ClickActionDetail(elid){
		if ($("#header").is(":visible")) {
			$("#header").toggle(500);
		}
		if ($("#editheader").is(":visible")) {
			$("#editheader").toggle(500);
		}
		
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}
	
	function clickDelete(actDelete){
		alert("ลบข้อมูลเรียบร้อย !");
	}
	
	function ClickActionEdit(elid){
		if ($("#myAddDetail").is(":visible")) {
			$("#myAddDetail").toggle(500);
		}
		if ($("#header").is(":visible")) {
			$("#header").toggle(500);
		}
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}
	
	function ClickActionEditDetail(elid){
		if ($("#myFund").is(":visible")) {
			$("#myFund").toggle(500);
		}
		if ($("#accitemgroup").is(":visible")) {
			$("#accitemgroup").toggle(500);
		}
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}
	
	function ClickActionBudget(actType){
		$("#myBudget").modal();
	}
	
	function ClickActionAccIG(elid){
		if ($("#myFund").is(":visible")) {
			$("#myFund").toggle(500);
		}
		if ($("#myEditDetail").is(":visible")) {
			$("#myEditDetail").toggle(500);
		}
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}
	
	function ClickActionFund(elid){
		if ($("#accitemgroup").is(":visible")) {
			$("#accitemgroup").toggle(500);
		}
		if ($("#myEditDetail").is(":visible")) {
			$("#myEditDetail").toggle(500);
		}
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}
	
	function ClickActionViewAcc(actType){
		$("#accitemgroup").modal();
	}
	
	function clickDown(elid) {
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}

	function clickUp(elid) {
		if ($(elid).is(":visible")) {
			$(elid).toggle(100);
			
		} else {
			return false;
		}
	}
	
	function callDetaillPage(){
		$.ajax({
	        url: "/UiKmutt-portlet/html/newheader/detail.jsp",
	        type: "get",
	        dataType: "html",
	        success: function(data) {
	        	$("div#container").html(data);
	        }
	    });
	    return false;
	}