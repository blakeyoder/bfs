$(document).ready(function(){
  $(".yes-button").click(function(){
    $.cookie('age', 'Exists', { expires: 7, path: '/' });
  })
});
