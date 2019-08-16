$(document).ready(function() {
  $("#header").hide();
  $('#option').hide();
  $('#MeatChoice').hide();
  $('#Style').hide();
  $('#Sides').hide();
  $("#header").slideDown(500);
  $('#option').slideDown(500,function(){
      $('#MeatChoice').slideDown(500,function(){
        $('#Style').slideDown(500,function(){
          $('#Sides').slideDown(500);
        });
      });
  });
});
