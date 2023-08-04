


//update_deleteat
$(".review_deletebtn").on('click',function(){
	$("#delete_alert_modal input[type='hidden']").val($(this).siblings(".review_id").val());
	$("#delete_alert_modal").css("top", $(window).scrollTop() + "px");
	$("#delete_alert_modal").css('display', 'block');
	$('#delete_alert_modal').on('scroll touchmove mousewheel', function(event) {
		event.preventDefault();
		event.stopPropagation();
		return false;
	});
});

$("#delete_alert_modal").on('click',".modal_cancelbtn",function(){
	$(this).parents(".modal").css('display', 'none');
});

$("#delete_alert_modal").on('click',".modal_deletebtn",function(){
	$(this).parents(".modal").css('display', 'none');
	$.ajax({
		type: 'post',
		url: '/updatedeletedat',
		dataType: 'json',
		data: {
			review_id: $(this).next().val()
		},
		success: function(result) { // 결과 성공 콜백함수
			$("#delete_okay_modal").css("top", $(window).scrollTop() + "px");
			$("#delete_okay_modal").css('display', 'block');
			$('#delete_okay_modal').on('scroll touchmove mousewheel', function(event) {
				event.preventDefault();
				event.stopPropagation();
				return false;
			});
		},
		error: function(request, status, error) { // 결과 에러 콜백함수
			console.log(error);
		}
	});//ajax end
});

$("#delete_okay_modal").on('click',".modal_okaybtn",function(){
	$(this).parents(".modal").css('display', 'none');
	location.replace(location.href);
});