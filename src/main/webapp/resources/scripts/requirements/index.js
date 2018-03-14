$(document).ready(function () {

    var projCardIdRegExp = /(\d+)_(\d+)/;

    $(".card").click(function () {

        var matches = projCardIdRegExp.exec($(this).attr("id"));

        window.location = '/projects/' + matches[1] + '/requirements/' + matches[2];
    });




});


// $('#newReq').click(function(){
//             $.ajax({
//                 url : yourUrlToController
//                 //todo something like that
//             });
//         });
