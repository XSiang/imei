$(function(){
	$("#workspace").hide();
	$(".choose-btn").click(function(){
		$(".choose").hide("slow");
		$("#workspace").show("slow");
	})

	var arr = [];
	$(".choose").on("ajax:success", function(event, data) {
		$("#dailyreport_batchnumber_id").val(data.id);

		//將選中產品，預設動作打勾，並送入字串到 Text_field
		$.each(data.motion_id, function(i, val){
			$(".motion_btn input[value=" + val + "]").prop("checked", true);
		});
		$(".motion_btn :checked").each(function(){	
			arr.push($(this).val());
			$("#dailyreport_motion").val(arr.join('、'));
		});

	});

	$(".motion_btn input").click(function(){
		if ($.inArray($(this).val(), arr) == -1) {
			arr.push($(this).val());
		} else {
			var itemtoRemove = $(this).val();
			arr.splice($.inArray(itemtoRemove, arr),1);
		};
		$("#dailyreport_motion").val(arr.sort().join('、'));
	});
});