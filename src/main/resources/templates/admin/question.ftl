<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "../parts/confirmationModal.ftl" as m>
<#import "../parts/pager.ftl" as p>
<#import "/spring.ftl" as spring>

<@c.page "question.title">
    <div class="container mt-5">
        <#if RequestParameters.error??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-danger" role="alert">
                        <@spring.message "${RequestParameters.error}"/>
                    </div>
                </div>
            </div>
        </#if>
        <div class="row">
            <div class="col">
                <table class="table table-sm table-bordered" style="text-align:center">
                    <thead class="table-info">
                        <tr>
                            <th scope="col"><@spring.message "question.number"/></th>
                            <th scope="col"><@spring.message "question.name"/></th>
                            <th scope="col"><@spring.message "question.topic"/></th>
                            <th scope="col"><@spring.message "question.subject"/></th>
                        </tr>
                    </thead>
                    <tbody>
                        <#list reportList as report>
                            <tr>
                                <td>${report.questionNumber}</td>
                                <td>${report.questionName}</td>
                                <td>${report.topic}</td>
                                <td>${report.subject}</td>
                                <td>
                                    <a class="btn btn-link" href="/admin/question/change?questionID=${report.questionNumber}"><@spring.message "question.link.change"/></a>
                                </td>
                                <td>
                                    <button style="color: red" class="btn btn-link" type="button" data-toggle="modal" data-target="#confirmationModalID" onclick="setQuestionID(${report.questionNumber})"><@spring.message "question.link.remove"/></button>
                                </td>
                            </tr>
                        </#list>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <@m.confirmationModal "question.remove.confirmation.modal.title" "question.remove.confirmation.modal.body" "ajaxRemoveQuestion()"/>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/question.js"></script>
</@c.page>