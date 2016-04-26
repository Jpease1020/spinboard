function viewAll(){
  $('#view-all').on('click', function(){
    $('.panel').remove()
    $.getJSON('/api/v1/links', function(response){
        displayLinks(response);
    });
  })
}
