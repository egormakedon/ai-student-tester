<#macro page title>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title><@spring.message "${title}"/></title>

        <link rel="icon" href="/static/img/bsuir.png">
        <link rel="stylesheet" href="/static/css/bootstrap.css">
    </head>

    <body>
        <#include "navbar.ftl">

        <div class="container">
            <#nested>
        </div>

        <script src="/static/js/jquery.js"></script>
        <script src="/static/js/popper.js"></script>
        <script src="/static/js/bootstrap.js"></script>
    </body>
</html>

</#macro>