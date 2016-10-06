<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>


<body>

<div id="images">

    <div class="form-group">

        <form>
            Please enter a location:  <input type="text"  placeholder="Location" name="location" id="locationId" />
            <input type="submit" id="locationButton"  class="btn btn-primary">  </input>
            <br><br>

        </form>

    </div>

    <div class="button">

        <button class="btn-primary" id="runThis"></button>

    </div>

</div>

<script>

        $("#runThis").click(function() {
        var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
        $.getJSON( flickerAPI, {
            tags:"grand canyon",
            tagmode: "any",
            format: "json"
        })
                .done(function( data ) {
                    $.each( data.items, function( i, item ) {
                        $( "<img>" ).attr( "src", item.media.m ).appendTo( "#images" );
                        if ( i === 10 ) {
                            return false;
                        }
                    });
                });
    })();
</script>



</body>

</html>