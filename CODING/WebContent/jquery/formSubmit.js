$(document).ready(function() {
	
	$('input:radio').click(function() {
		//e.preventDefault();
		var current_element = $(this);
		alert(current_element.val());
		var from = $('#from').val();
		var to = $('#to').val();
		var value = 'from=' + from + "&to=" + to;
		if (from != to) {
			$.ajax({
				url : "ChangeTable" + current_element.val(),
				type : "post",
				data : value,
				cache : false,
				success : function(data) {
					//alert(data);
//				$('#msg').empty();
				$('#msg').html(data);
				}
			});
		} else {
			alert("Same table name");
		}
	});
	/*$('#table').change(function() {
		//e.preventDefault();
		var current_element = $(this);
		alert(current_element.val());
		var value="table="+current_element.val();
			$.ajax({
				url : "displayTable.jsp",
				type : "post",
				data : value,
				cache : false,
				success : function(data) {
				alert(data);
				$('#display').html(data);
				}
			});
		
	});
	$('#display').click(function() {
		//e.preventDefault();
		///$('#display').clear();
		alert("");
		var current_element = $(this);
		alert(current_element.val());
		var value="table="+current_element.val();
			$.ajax({
				url : "display.jsp?key="+$('#key').val(),
				type : "post",
				data : value,
				cache : false,
				success : function(data) {
				
				$('#display').html(data);
				}
			});
		
	});
	$('#download').click(function() {
		//e.preventDefault();
		$('#display').clear();
		var current_element = $(this);
		alert(current_element.val());
		var count=$('#keyCount').val();
		for(var i=0;i<=count;i++){
		var value="table="+$('#table').val();
		alert($('#'+i).val());
			$.ajax({
				url : "DownloadFile?hide="+$('#'+i).val(),
				type : "post",
				data : value,
				cache : false,
				success : function(data) {
				
				}
			});
			}
		
	});*/
	$('#Click').click(function() {
		alert($('#Click').attr('class'));
	var loop=$('#Click').attr('class');
	for(var i=0;i<loop;i++){
		alert(" file no = "+i);
		$('#'+i).submit();
	}
	
	});
});