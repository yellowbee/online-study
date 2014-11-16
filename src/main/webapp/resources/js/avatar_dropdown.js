
$(function () {
	$( "#menu" ).menu();
	
	/* Event handlers to show and hide the dropdown menu */
	$("#avatar_head").on("mouseover", function () {
		$("#avatar_dropdown").css("visibility", "visible");
	});
	$("body").click(function () {
		$("#avatar_dropdown").css("visibility", "hidden");
	});
});
