<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "/spring.ftl" as spring>
<#import "../parts/confirmationModal.ftl" as m>

<@c.page "subject.topic.title">
    <div class="container mt-5">
        <form>
            <#if removedSuccessfully??>
                <div class="row">
                    <div class="col">
                        <div class="alert alert-success" role="alert">
                            <@spring.message "${removedSuccessfully}"/>
                        </div>
                    </div>
                </div>
            </#if>
            <div class="row">
                <div class="col-6">
                    <table class="table table-sm table-bordered table-hover" style="text-align:center">
                        <thead class="table-info">
                            <tr>
                                <th scope="col"><@spring.message "subject.topic.subject"/></th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <#list subjectList as s>
                                <tr>
                                    <td <#if subject?? && subject.ID = s.ID>class="table-secondary"</#if>
                                        onclick="hrefToSubjectTopic(${s.ID})">${s.subjectName}</td>
                                    <td>
                                        <button style="color: red" class="btn btn-link" type="button" data-toggle="modal"
                                                data-target="#confirmationModalSubject${s.ID}"><@spring.message "subject.topic.link.remove"/></button>
                                        <@m.confirmationModal "confirmationModalSubject${s.ID}" "subject.topic.subject.remove.confirmation.modal.title"
                                            "subject.topic.subject.remove.confirmation.modal.body" "" "ajaxRemoveSubject(${s.ID})"/>
                                    </td>
                                </tr>
                            </#list>
                        </tbody>
                    </table>
                </div>
                <#if subject??>
                    <div class="col-6">
                        <table class="table table-sm table-bordered" style="text-align:center">
                            <thead class="table-info">
                                <tr>
                                    <th scope="col"><@spring.message "subject.topic.topic"/></th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <#list topicList as topic>
                                    <tr>
                                        <td>${topic.topicName}</td>
                                        <td>
                                            <button style="color: red" class="btn btn-link" type="button" data-toggle="modal"
                                                    data-target="#confirmationModalTopic${topic.ID}"><@spring.message "subject.topic.link.remove"/></button>
                                            <@m.confirmationModal "confirmationModalTopic${topic.ID}" "subject.topic.topic.remove.confirmation.modal.title"
                                                "subject.topic.topic.remove.confirmation.modal.body" "" "ajaxRemoveTopic(${topic.ID})"/>
                                        </td>
                                    </tr>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                </#if>
            </div>

            <input id="csrfID" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/subjectTopic.js"></script>
</@c.page>