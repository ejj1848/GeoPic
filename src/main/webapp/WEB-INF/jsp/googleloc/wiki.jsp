<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1> Wiki dikidi doo  </h1>

<body>

<div id="wikiSearch" class="jumbotron" align="center">

    <div class="form-group">

        <form name = "getWord">
            Tell me what you want to read about? <input type="text" id="wordRetrieve"  placeholder="Keyword" name="keyWord"/>

            <button type="button" id="wordButton"  class="btn btn-primary"> Show me </button>

        </form>

        <div id = "results"> </div>

    </div>



</div>




<script>

    $("#wordButton").click(function(){
        var keyWord = $("[name='keyWord']").val();
        var html ='';
        var wikiApi = "https://en.wikipedia.org/w/api.php?action=opensearch&search=" + keyWord + "&limit=5&format=json&callback=?";
        $.getJSON(wikiApi,function(data){
            console.log(data);
            for(var i = 0; i < data[1].length; ++i){
                html += '<a href = " ' + data[3][i] + '" target ="_blank" class ="row"><h3>' + data[1][i] + '<h3><p>' + data[2][i] + '</p></a>';
                    }
            $('#results').html(html)
                });


    });


</script>