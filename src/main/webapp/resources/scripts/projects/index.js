$("#proj-table").find("tr").click(function() {
    var id = $(this).find("td.hidden-xs").text();

    window.location = '/projects/' + id;
});