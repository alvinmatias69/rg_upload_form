$("#nim").focusout(function(){
	$.ajax({
		type: "GET",
		url: "http://localhost:4000/nim/" + $("#nim").val(),
		success: function(data){
			if (data.error) {
				$("#nim").addClass('invalid');
				$("#nama").val('Mohon maaf NIM anda tidak terdaftar!').addClass('invalid');
				$("#submit").prop("disabled", true);
			}else{
				$("#nama").val(data.nama);
				$("#submit").prop("disabled", false);
			}
		},
		async: false,
	    crossDomain: true,
	});
});


$("#resume").change(function(){
	$("#resume").clone().appendTo("#resume_hidden");
});

$("#fileName").change(function(){
	var resumeArr = $("#fileName").val().split('.');
  	if (resumeArr[resumeArr.length - 1] != 'pdf') {
  		$("#submit").prop("disabled", true);
  		$("#exp")
  			.removeClass('grey-text text-lighten-1')
  			.addClass('red-text text-accent-4');
  	}else{
  		$("#exp")
  			.removeClass('red-text text-accent-4')
  			.addClass('grey-text text-lighten-1');
  		$("#submit").prop("disabled", false);
  	}
});

function submitForm() {
	$("#nim_hidden").val($("#nim").val());
	$("#nama_hidden").val($("#nama").val());
    $("#content").html(function(){
		return "Terima kasih atas partisipasi anda. Jangan lupa terus datang ke lab ya :D<br><br><a onClick='clickBack()' href='#'>Kembali ke form</a>."
	});
}

function clickBack(){
	location.reload();
}