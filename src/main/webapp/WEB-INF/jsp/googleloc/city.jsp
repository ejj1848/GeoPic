<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1> Google Maps and Instagram API  </h1>

<body>

<div id="images" class="jumbotron" align="center">

    <div class="form-group">

        <form name = "getPhoto">
            Please Enter a location? <input type="text" id="photoRetrieve"  placeholder="Location" name="location"/>
            <%--How Many Pictures do you want to see? <input type="number" id="howMany" placeholder="How Many Pics?" name="count"/>--%>
            <button type="button" id="locationButton"  class="btn btn-primary"> Show me </button>
        </form>

    </div>

</div>

<script>

    $("#locationButton").click(function() {
        var geoTag = $("#photoRetrieve").val();
        console.log(geoTag)
        var mapsAPI = "https://maps.googleapis.com/maps/api/geocode/json?address="+ geoTag;
        $.getJSON( mapsAPI, {
            result:"any",
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