function sortByReadStatus($readLinks, $unreadLinks){
  $('#read-status-button').click(function(){
    $('.sort-status').append("<p class='counter'></p>")
    var $readLinks = $('.read-true')
    var $unreadLinks = $('.read-false')
    var $counter = $('.counter').size()
    if($counter % 2 == 0){
      $unreadLinks.addClass('hidden')
      $readLinks.removeClass('hidden')
    } else if($counter % 2 != 0){
      $unreadLinks.removeClass('hidden')
      $readLinks.addClass('hidden')
    }
  })
}
