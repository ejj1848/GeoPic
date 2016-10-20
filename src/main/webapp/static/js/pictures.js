function getPictures()
{
    $("#locationButton").click(function () {
        var photoTag = $("#photoRetrieve").val();
        console.log(photoTag)
        var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
        $.getJSON(flickerAPI, {
            tags: photoTag,
            tagmode: "any",
            format: "json"
        })
            .done(function (data) {
                $.each(data.items, function (i, item) {
                    $("<img>").attr("src", item.media.m).appendTo("#images");
                    if (i === 10) {
                        return false;
                    }
                });
            });
    });
}