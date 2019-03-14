<#ftl encoding="UTF-8">
<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title><@spring.message "error.title"/></title>
    </head>

    <body>
        <a href="<@spring.url "/"/>"><@spring.message "general.go.to.home.page"/></a>

        <br><br>

        <@spring.message "error.message"/> :

        <#if RequestParameters.exceptionMessage ??>
            <#if RequestParameters.exceptionMessage ? starts_with("validation")>
                <@spring.message "${RequestParameters.exceptionMessage}"/>
            <#else>
                ${RequestParameters.exceptionMessage}
            </#if>
        </#if>
    </body>
</html>