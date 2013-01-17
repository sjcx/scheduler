jQuery(function() {
  $('#datepicker').datepicker({ 
    dateFormat: "yy-mm-dd", 
    onSelect: function(date){
      var DateChoice = $(this).val();
      var DateFormat = String(DateChoice);
      $.ajax
        ({
            type: "GET",
            url: "/appointments",
            data: { 'date' : DateFormat },
            success: function(data) {
                $('#appointmentlist').html(data);
            }
       })       
      }
    })
});
