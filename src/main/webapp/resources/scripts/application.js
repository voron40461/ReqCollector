// ;(function () {
//     var groups = ["Administrators", "Students", "Teachers", "Agents", "Spies", "Directors", "Professors"];
//
//     var $table = $('#groups-table'),
//         $button = $('#new');
//
//     var rowsNumberSpan = $('#rows-number');
//     rowsNumberSpan.text("0 row(s)");
//
//     var rowsNumber = 0;
//
//     function addGroup(name) {
//         if (name == undefined)
//             name = "Group " + rowsNumber;
//         rowsNumber++;
//         $table.bootstrapTable('insertRow', {
//             index: rowsNumber,
//             row: {
//                 properties: '<a class="ref"><i class="glyphicon glyphicon-cog"></i></a>',
//                 group_id: rowsNumber - 1,
//                 name: '<a class="ref" href="../groups/show.jsp">' + name + '</a>',
//                 attributes: '<a class="label label-info">' + 'Group ' + rowsNumber + '</a>'
//             }
//         });
//         $table.bootstrapTable('scrollTo', 'top');
//     }
//
//     $(function () {
//         groups.forEach(function (item, index) {
//             addGroup(item, index);
//             rowsNumberSpan.text((rowsNumber + 1) + " row(s)");
//         });
//
//         $button.click(function () {
//             addGroup();
//         });
//     });
// })();
