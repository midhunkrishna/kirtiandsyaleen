var WEDDING = {
  constructDynamicGallery: function(){
    var dynamicContent = [];
    $("#gallery-items .element").each(function(index, elem){
      var galleryElement = {
        src: $(elem).find(".full").text().trim(),
        thumb: $(elem).find(".thumb").text().trim(),
        subHtml: $(elem).find(".text-content").html()
      };
      dynamicContent.push(galleryElement);
    });
    return dynamicContent;
  }
};

$(function(){
  $("#play-button, #play-button i").on("click", function(){
    $(this).lightGallery({
      dynamic: true,
      dynamicEl: WEDDING.constructDynamicGallery()
    });
  });
});
