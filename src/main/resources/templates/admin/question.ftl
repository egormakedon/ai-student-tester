<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "../parts/confirmationModal.ftl" as m>
<#import "../parts/pager.ftl" as p>
<#import "/spring.ftl" as spring>

<@c.page "question.title">
    <div class="container mt-5">
        <#if notificationSubjectList??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-warning" role="alert">
                        <#list notificationSubjectList as s>
                            <div><@spring.message "question.notification.subject"/>:${s.getSubjectName()}</div>
                        </#list>
                    </div>
                </div>
            </div>
        </#if>
        <#if error??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-danger" role="alert">
                        <@spring.message "${error}"/>
                    </div>
                </div>
            </div>
        </#if>
        <#if removedSuccessfully??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        <@spring.message "question.removed.successfully"/>
                    </div>
                </div>
            </div>
        </#if>
        <div class="row">
            <div class="col">
                <form>
                    <table class="table table-sm">
                        <tbody>
                            <tr>
                                <td>
                                    <select class="custom-select" id="subjectSelectorID" onchange="getTopicList()">
                                        <option <#if !subject??>selected</#if>><@spring.message "question.choose.subject"/></option>
                                        <#list subjectList as sl>
                                            <option <#if subject?? && subject.ID == sl.ID>selected</#if> value="${sl.ID}">${sl.subjectName}</option>
                                        </#list>
                                    </select>
                                </td>
                                <td>
                                    <select class="custom-select" id="topicSelectorID">
                                        <option <#if !topic??>selected</#if>><@spring.message "question.choose.topic"/></option>
                                        <#if topicList??>
                                            <#list topicList as tl>
                                                <option <#if topic?? && topic.ID == tl.ID>selected</#if> value="${tl.ID}">${tl.topicName}</option>
                                            </#list>
                                        </#if>
                                    </select>
                                </td>
                                <td>
                                    <button style="background-color: #044d58" class="btn btn-primary" type="submit" onclick="setInputValues()"><@spring.message "question.button.search"/></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <input type="hidden" name="subjectID" <#if subject??>value="${subject.ID}"</#if>>
                    <input type="hidden" name="topicID" <#if topic??>value="${topic.ID}"</#if>>
                </form>
            </div>
            <div class="col ml-5">
                <table class="table table-sm">
                    <tbody>
                        <tr>
                            <td><@p.pager url page/></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <form>
                    <table class="table table-sm table-bordered" style="text-align:center">
                        <thead class="table-info">
                            <tr>
                                <th scope="col"><@spring.message "question.number"/></th>
                                <th scope="col"><@spring.message "question.name"/></th>
                                <th scope="col"><@spring.message "question.topic"/></th>
                                <th scope="col"><@spring.message "question.subject"/></th>
                                <th scope="col" colspan="2"><@spring.message "question.edit"/></th>
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
                                        <a class="btn btn-link"
                                           href="/admin/question/change?questionID=${report.questionNumber}"><@spring.message "question.link.change"/></a>
                                    </td>
                                    <td>
                                        <button style="color: red" class="btn btn-link" type="button" data-toggle="modal"
                                                data-target="#confirmationModalQuestion${report.questionNumber}"><@spring.message "question.link.remove"/></button>
                                        <@m.confirmationModal "confirmationModalQuestion${report.questionNumber}" "question.remove.confirmation.modal.title" "question.remove.confirmation.modal.body" ": \"${report.questionName}\"?" "ajaxRemoveQuestion(${report.questionNumber})"/>
                                    </td>
                                </tr>
                            </#list>
                        </tbody>
                    </table>

                    <input id="csrfID" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/question.js"></script>
</@c.page>