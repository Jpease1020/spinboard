function getLinks(){
  $.getJSON('/api/v1/links', function(response){
      displayLinks(response);
  });
}

function displayLinks(links){
  links.forEach(function(link){
    $('.links-index').append(linkHtml(link));
    $('.false').parent().parent().removeClass('greyed-out')
    $('.true').parent().parent().removeClass('greyed-out')
    $('.true').parent().parent().addClass('greyed-out')
  });
}
