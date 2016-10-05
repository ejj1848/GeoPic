<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<script>



    $('#cityButton').onclick
    $.ajax({
        dataType: 'json',
        url: 'https://maps.googleapis.com/maps/api/geocode/json?address='.$("[name='location']").val() ,
        data: data,
        success: success
    });


</script>

<div class="form-group">

    <form action="">
        Please enter a city:  <input type="text"  placeholder="City" name="location" />
        <br><br>
        <button type="submit" name="cityButton" class="btn btn-primary">Submit</button>
    </form>

</div>

</html>