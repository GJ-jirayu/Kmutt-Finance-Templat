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