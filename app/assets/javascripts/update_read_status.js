function updateRead(){
  $('.links-index').delegate('.change-read-status', 'click', function(){
    var $readStatus = $(this).prev()
    var $linkId = $(this).closest(".panel").attr('data-id')
    $.ajax({
      url: 'api/v1/links/' + $linkId,
      type: 'PUT',
      data: {"change": 'true'},
      success: function(response){
        replaceReadStatus($readStatus, response)
        $('.true').parents('.panel').toggleClass("greyed-out")
        $('.false').parents('.panel').removeClass("greyed-out")
      }, error: function(xhr){
        console.log(xhr.responseText)
      }
    });
  });
};

function replaceReadStatus(oldStatus, response){
  oldStatus.replaceWith('<div class="' + response.read + '">' + response.read + '</div>');
};
