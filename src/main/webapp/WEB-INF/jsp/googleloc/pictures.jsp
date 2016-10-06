<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1> Some photos may go here, let's hope </h1>

<body>


<div id="images" class="jumbotron" align="center">

    <div class="form-group">

        <form name = "getPhoto">
            What do you want to see ? <input type="text" id="photoRetrieve"  placeholder="What do you want to see" name="photo"/>
            <%--How Many Pictures do you want to see? <input type="number" id="howMany" placeholder="How Many Pics?" name="count"/>--%>
            <button type="button" id="locationButton"  class="btn btn-primary"> Show me </button>
        </form>

    </div>

</div>

<script>

    $("#locationButton").click(function() {
         var photoTag = $("#photoRetrieve").val();
        console.log(photoTag)
        var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
        $.getJSON( flickerAPI, {
            tags: photoTag,
            tagmode: "any",
            format: "json"
        })
                .done(function( data ) {
                    $.each( data.items, function( i, item )
                    {
                        $( "<img>" ).attr( "src", item.media.m ).appendTo( "#images" );
                        if ( i === 10 ) {
                            return false;
                        }
                    });
                });
    });
</script>


</body>