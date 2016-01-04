$(document).ready(function(){
  $(".over-21").click(function(){
    $.cookie('age', 'Exists', { expires: 7, path: '/' });
  })
});
