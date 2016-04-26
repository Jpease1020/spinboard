function sortByUrl(){
  $('#alpha-url-sort').on('click', function(){
    $('.panel').remove()
    $.getJSON('/api/v1/links', function(response){
        displayAlphaUrl(response);
    });
  });
}

function displayAlphaUrl(response){
  var sorted = response.sort(function(a,b){
    return a.url.localeCompare(b.url);
  })
  displayLinks(sorted)
}
