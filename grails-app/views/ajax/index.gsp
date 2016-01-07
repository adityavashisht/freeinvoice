<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>

<body>

<div id="invoice">

</div>

<table>
    <tbody id="invoiceItems"></tbody>

</table>

<script>


    $(function () {
        $.ajax({
                    method: "GET",
                    url: '<g:createLink controller="ajax" action="ajax"/>',
                    data: {name: "John", location: "Boston"}
                })
                .done(function (data) {
                    var dom = '<span>' + data.id + '</span>';

                    $("#invoice").empty();
                    $("#invoice").append(dom);
                });

        $.ajax({
                    method: "GET",
                    url: '<g:createLink controller="ajax" action="list"/>'

                })
                .done(function (data) {
                    if (data != undefined && data.length > 0) {
                        var dom = '';
                        for (var index = 0; index < data.length; index++) {
                            var rowItem = data[index];
                            dom += '<tr><td>'+ rowItem.id + '</td><td>' + rowItem.amount + '</td></tr>';

                        }
                    }


                    $("#invoiceItems").empty();
                    $("#invoiceItems").append(dom);
                });
    });
</script>

</body>
</html>