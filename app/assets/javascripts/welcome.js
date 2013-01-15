$(function() {
  $('#datepicker').datepicker({ 
    dateFormat: 'dd-mm-yy', 
    onSelect: function(date){
          console.log(date);
        }
      });
    });