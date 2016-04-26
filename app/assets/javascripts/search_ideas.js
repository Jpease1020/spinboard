function searchLinks(){
  $('#link-searcher').on('keyup', function(){
    var inputText = $(this).children('input').val().toLowerCase();
    var linkElements = $('.panel')

    linkElements.removeClass('hidden')
    var hideLinks = linkElements.filter(function(){
      linkTitleAndUrl = $(this).find(".title").text().toLowerCase() +
          $(this).find(".url").text().toLowerCase()
      return !(linkTitleAndUrl.includes(inputText))
    })
    hideLinks.addClass('hidden')
  })
}
