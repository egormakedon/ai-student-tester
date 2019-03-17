<#ftl encoding="UTF-8">
<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title><@spring.message "result.title"/></title>
    </head>

    <body>
        <a href="<@spring.url "/"/>"><@spring.message "general.go.to.home.page"/></a>

        <br><br>

        <#if testResultDTO ??>
            <@spring.message "result.test.number"/> ${testResultDTO.getTestSessionId()}
            <br>
            <@spring.message "result.group.number"/> ${testResultDTO.getStudentGroupNumber()}
            <br>
            <@spring.message "result.student"/>: ${testResultDTO.getStudentTicket()}; ${testResultDTO.getLastName()} ${testResultDTO.getFirstName()} ${testResultDTO.getMiddleName()}
            <br>
            <@spring.message "result.created.date"/>: ${testResultDTO.getCreatedDate()}
            <br>
            <@spring.message "result.finished.date"/>: ${testResultDTO.getFinishedDate()}
            <br>
            <@spring.message "result.mark"/>: ${testResultDTO.getMark()}
         <#else>
            <@spring.message "result.complete.test.to.show.result"/>
        </#if>
    </body>
</html>