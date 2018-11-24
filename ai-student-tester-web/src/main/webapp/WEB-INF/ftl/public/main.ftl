<#ftl encoding="UTF-8">
<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title><@spring.message "main.title"/></title>
    </head>

    <body>
        <form action="<@spring.url "/startTest"/>" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input type="hidden" id="numberOfParametersId" value="0"/>

            <input type="hidden" id="studentTicketId" name="studentTicket" value="">
            <input type="hidden" id="subjectNameId" name="subjectName" value="">

            <label id="groupNumberLabelId"> <@spring.message "main.label.group.number"/> :
                <select id="groupNumberSelectId" onchange="checkNumberOfParameters()">
                    <option></option>
                    <option>XXXXX</option>
                </select>
            </label>

            <br><br>

            <label hidden id="studentNameLabelId"> <@spring.message "main.label.student.name"/> :
                <select hidden id="studentNameSelectId" onchange="checkNumberOfParameters()">
                    <option></option>
                    <option>XXXXX</option>
                </select>
            </label>

            <br><br>

            <label hidden id="subjectNameLabelId"> <@spring.message "main.label.subject.name"/> :
                <select hidden id="subjectNameSelectId" onchange="checkNumberOfParameters()">
                    <option></option>
                    <option>XXXXX</option>
                </select>
            </label>

            <br><br>

            <input disabled id="startTestButtonId" type="button" value="<@spring.message "main.button.start.test"/>">
        </form>

        <script src="<@spring.url "/resources/js/jquery.js"/>"></script>
        <script src="<@spring.url "/resources/js/ajax.js"/>"></script>
        <script src="<@spring.url "/resources/js/main.js"/>"></script>
    </body>
</html>