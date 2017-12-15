<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>
<c:url value="/static/js/pictures.js" var="pictures"/>
<script src="${pictures}"></script>

<h1> Some photos may go here, let's hope </h1>

<body>


<div id="images" class="jumbotron" align="center">

    <div class="form-group">

        <form name = "getPhoto">
            What do you want to see ? <input id="photoRetrieve"  placeholder="What do you want to see" name="photo"/>


        </form>
        <button id="locationButton"  class="btn btn-primary"> Show me </button>
    </div>

</div>
</div>

<script>

 getPictures();

</script>


</body>