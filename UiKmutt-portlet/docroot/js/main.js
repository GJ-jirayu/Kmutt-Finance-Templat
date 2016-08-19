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
	
/*	
	id เปิด   or id ปิด
		เปิด
	id ปิด   and id ปิด
		ปิด
		
		จะไห้มัน เชคตัวอื่นด้วย ทำ ?*/
	
	function clickcheckDown(elid) {
		
		
	/*	if($('input[type="checkbox"]').is(':checked')){
			
			$(elid).toggle(500);
			
		}else{
			return false;
		}*/
		
			/*$("table.table>tbody>tr").each(function(){
				
				 alert("Checkbox state (method 1) = " + $(this.id).prop('checked'));
			});*/
		
		
		/*$("table.table>tbody>tr").each(function(){
		    if($(this).children("td:nth-child(0)").children('input[type="checkbox"]').is(':checked')){
		    	alert("true");
		    }else{
		    	alert("else");
		    }
		});*/
		
		/*if ($('#check_id').is(":checked")){    
			if ($(elid).is(":visible")) {
				return false;
			} else {
				$(elid).toggle(500);
			}
		}else if(elid == false){
			if($(elid).is(":visible")) {
				$(elid).toggle(500)
			}else{
				return false;
			}
		}*/
	}
	
	
	