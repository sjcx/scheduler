jQuery(function() {
  $('#datepicker').datepicker({ 
    dateFormat: "mmddyy", 
    onSelect: function(date){
      $.ajax
        ({
            type: "GET",
            url: "/appointments/",
            data: date,
            success: function(result)
            {
              console.log(result);
            }
       })       
      }
    })
});
