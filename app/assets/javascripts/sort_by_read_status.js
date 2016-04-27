// function sortByReadStatus(){
//   $('#read-status-button').on('click', function(){
//     $('.sort-status').append("<p class='counter'></p>")
//     var $counter = $('.counter').size()
//     if($counter % 2 == 0){
//       $('.panel').removeClass('hidden')
//       $('.read-true').addClass('hidden')
//     } else if($counter % 2 != 0){
//       $('.panel').removeClass('hidden')
//       $('.read-false').addClass('hidden')
//     }
//   })
// }

// Meeka, why doesn't the above method work?

function sortByReadStatus(){
  $('#read-status-button').on('click', function(){
    $('.sort-status').append("<p class='counter'></p>")
    var $counter = $('.counter').size()
    $.getJSON('/api/v1/links', function(response){
      if($counter % 2 == 0){
        $('.panel').remove()
        displayLinks(readLinks(response));
      } else if($counter % 2 != 0){
        $('.panel').remove()
        displayLinks(unReadLinks(response));
      }
    });
  });
};

function readLinks(links){
  return links.filter(function(link){
    return link.read === true
  })
}

function unReadLinks(links){
  return links.filter(function(link){
    return link.read === false
  })
}
