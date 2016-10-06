<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1> Some photos may go here, let's hope </h1>

<body>

<div id="images">

    <div class="form-group">

        <form>
            What do you want to see ? <input type="text"  placeholder="What do you want to see" name="photo" id="photoId" />
            <br>
            <br>
            <input type="submit" id="locationButton"  class="btn btn-primary">  </input>
        </form>

    </div>

    <input type="submit" id="loadButton"  class="btn btn-primary">  </input>

</div>

<script>

    $("#locationButton").click(function() {
        var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
        var photoTag = $("[name='photo']").val();
        $.getJSON( flickerAPI, {
            tags: photoTag ,
            tagmode: "any",
            format: "json"
        })
                .done(function( data ) {
                    $.each( data.items, function( i, item ) {
                        $( "<img>" ).attr( "src", item.media.m ).appendTo( "#images" );
                        if ( i === 15 ) {
                            return false;
                        }
                    });
                });
    })();
</script>