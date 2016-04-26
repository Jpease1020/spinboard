function editLinks(){
  $('.links-index').delegate('.edit-link', 'blur', function(){
    var linkObject = $(this).children('span')
    var $linkDataId = linkObject.attr('data-id')
    var $linkId = $(this).closest('.link').attr('data-id')
    var $linkNewData = linkObject.text() || " "

    if($linkDataId == "title"){
      linkParams = { 'title': $linkNewData }
    } else if($linkDataId == "url"){
      linkParams = { 'url': $linkNewData }
    }

    $.ajax({
      url: 'api/v1/links/' + $linkId,
      type: 'PUT',
      data: linkParams,
      success: function(response){
      }, error: function(xhr){
        console.log(xhr.responseText)
      }
    });
  });
};
