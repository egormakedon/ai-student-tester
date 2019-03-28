<#ftl encoding="UTF-8">

<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "result.title">
    <div class="container mt-5">
        <div class="row">
            <div class="col">
                <#if Session.testSessionID??>
                    <table class="table table-striped table-bordered">
                        <tbody>
                        <tr>
                            <td><@spring.message "result.test.number"/></td>
                            <td>${Session.testSessionID}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.start.time"/></td>
                            <td>${createdDate}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.finish.time"/></td>
                            <td>${finishedDate}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.duration"/></td>
                            <td>${duration}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.group.number"/></td>
                            <td>${studentGroupNumber}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.student.ticket"/></td>
                            <td>${studentTicket}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.lastname"/></td>
                            <td>${lastName}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.firstname"/></td>
                            <td>${firstName}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.middlename"/></td>
                            <td>${middleName}</td>
                        </tr>
                        <tr>
                            <td><@spring.message "result.mark"/></td>
                            <td>${mark}</td>
                        </tr>
                        </tbody>
                    </table>
                <#else>
                    <blockquote class="blockquote text-center">
                        <table class="table table-striped table-bordered">
                            <tbody>
                                <tr>
                                    <td>
                                        <@spring.message "result.complete.test.to.show.result"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </blockquote>
                </#if>
            </div>
        </div>
    </div>
</@c.page>