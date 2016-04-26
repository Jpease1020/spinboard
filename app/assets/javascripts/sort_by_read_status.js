function sortByReadStatus($readLinks, $unreadLinks){
  $('#read-status-button').on('click', function(){
    $('.sort-status').append("<p class='counter'></p>")
    var $counter = $('.counter').size()
    if($counter % 2 == 0){
      $('.panel').removeClass('hidden')
      $('.read-true').addClass('hidden')
    } else if($counter % 2 != 0){
      $('.panel').removeClass('hidden')
      $('.read-false').addClass('hidden')
    }
  })
}
