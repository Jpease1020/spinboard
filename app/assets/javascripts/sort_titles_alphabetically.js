function sortByTitle(){
  $('#alpha-title-sort').on('click', function(){
    $('.panel').remove()
    $.getJSON('/api/v1/links', function(response){
        displayAlphaTitle(response);
    });
  });
}

function displayAlphaTitle(response){
  var sorted = response.sort(function(a,b){
    return a.title.localeCompare(b.title);
  })
  displayLinks(sorted)
}
