function linkHtml(link){
  var html = (
    '<div class="panel panel-default link read-' + link.read +'" data-id="'+ link.id +'">' +
      '<div class="panel-heading">' +
        '<div class="container">' +
          '<div class="row">' +
            '<h3 class="panel-title edit-link">Title: ' +
              '<span contenteditable="true" class="title" data-id="title">' +
                link.title +
              '</span>' + '</h3><br>' +
          '</div>' +
        '</div>' +
        '<div class="statement">' +
          '<h5>I have read this: </h5>' +
        '</div>' +
        '<div class="' + link.read + '">' +
          link.read +
        '</div>' +
        '<div class="change-read-status">' +
          '<button>Mark as Read/Unread</button>' +
        '</div>' +
      '</div>' +
      '<div class="panel-url">' +
        '<div class="container">' +
          '<div class="row edit-link">' +
            '<span contenteditable="true" class="url" data-id="url">' +
              link.url +
            '</span>' +
          '</div><br>' +
        '</div>' +
      '</div>' +
    '</div>');
  return html
}
