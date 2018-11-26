<#ftl encoding="UTF-8">
<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title><@spring.message "error.title"/></title>
    </head>

    <body>
        <@spring.message "error.message"/> :
        <@spring.message "${RequestParameters.exceptionMessage}"/>
    </body>
</html>