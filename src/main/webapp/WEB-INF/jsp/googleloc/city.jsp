<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<script>


//    if(!empty($_GET['location'])){
//        $maps_url = 'https://maps.googleapis.com/maps/api/geocode/json?address='.urldecode ($_GET['location']);
//
//        $maps_json = file_get_contents($maps_url);
//        $maps_array = json_decode($maps_json,true)
//
//        $lat = $maps_array['results'][0]['geometry']['location']['lat']
//        $lng = $maps_array['results'][0]['geometry']['location']['lng']
//
//        $instagram_url = 'https://api.instagram.com/v1/media/search?lat=' .$lat .'&lng='.$lng . '&client_id=8083bb9a80ca4712a663d0b112f4eda5';
//
//        $instagram_json = file_get_contents($instagram_url);
//        $instagram_array = json_decode($instagram_json, true);
//    }


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