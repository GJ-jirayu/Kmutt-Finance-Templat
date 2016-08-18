$(document).ready(function(){
/*	$("#myBtn").click(function(){
	    $("#myModal").modal();
	});*/
	
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

	function ClickAction(actType){
		$("#myModal").modal();
	}
	
	function ClickActionDetail(actType){
		$("#myDetail").modal();
	}
	
	function clickDelete(actDelete){
		alert("ลบข้อมูลเรียบร้อย !");
	}
	
	function ClickActionEdit(actType){
		$("#myModalEdit").modal();
	}
	
	function ClickActionEditDetail(actType){
		$("#editDetail").modal();
	}
	
	function ClickActionBudget(actType){
		$("#myBudget").modal();
	}
	
	function ClickActionFund(actType){
		$("#myFund").modal();
	}
	