function wikiResult() {
    $("#wordButton").click(function () {
        var keyWord = $("[name='keyWord']").val();
        var html = '';
        var wikiApi = "https://en.wikipedia.org/w/api.php?action=opensearch&search=" + keyWord + "&limit=5&format=json&callback=?";
        $.getJSON(wikiApi, function (data) {
            console.log(data);
            for (var i = 0; i < data[1].length; ++i) {
                html += '<a href = " ' + data[3][i] + '" target = "_blank" class= "row"><h3>' + data[1][i] + '</h3><p>' + data[2][i] + '</p></a>';
            }
            $('#results').html(html)
        });

    });
}