$(function() {
	
	$(".nav-tabs > li").click(function(e) {
		e.preventDefault();
		$(".nav-tabs > li >a").removeClass("active");
		$(this).find("a").addClass("active");
		$(".tab-info").addClass("d-none");
		let num = $(this).index();
		$(".tab-info").eq(num).removeClass("d-none");

	});
	$("#loginModalJoinBtn").click(function(){
		$('#loginModal').modal('hide');
		$('#joinModal').modal('show');
	});
});
