<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>
<c:url value="/static/js/pictures.js" var="pictures"/>
<script src="${pictures}"></script>

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
 getPictures();
</script>


</body>