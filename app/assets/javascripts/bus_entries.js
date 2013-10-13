$(document).ready(function(){

  	$('#bus_entry_feria_tickets').change(function(){
  		$('#bus_entry_feria_total_income').val($('#bus_entry_feria_tickets').val() * $('#bus_entry_current_feria_fare').val());
  	});

 });