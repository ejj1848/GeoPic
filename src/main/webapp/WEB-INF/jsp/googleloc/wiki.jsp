<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<c:url value="/static/js/wiki.js" var="wiki"/>
<script src="${wiki}"></script>

<link href="${bootstrapCUSTOM}" rel="stylesheet" media="screen">

<h1> Dicks Out </h1>

<body class="harambe">

<div id="wikiSearch" class="jumbotron" align="center">

    <div class="middlebox">

        <form name = "getWord">
            Tell me what you want to read about? <input type="text" id="wordRetrieve"  placeholder="Keyword" name="keyWord"/>

            <button type="button" id="wordButton"  class="btn btn-primary"> WikiLeaks </button>

        </form>

        <div id = "results"> </div>

    </div>

</div>


<script>

        wikiResult();

</script>