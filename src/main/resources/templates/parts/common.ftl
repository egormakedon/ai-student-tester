<#macro page title>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    </body>
</html>

</#macro>