<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "/spring.ftl" as spring>
<#import "../parts/confirmationModal.ftl" as m>

<@c.page "subject.topic.title">
    <div class="container mt-5">
        <#if success??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        <@spring.message "${success}"/>
                    </div>
                </div>
            </div>
        </#if>
        <#if errors??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-danger" role="alert">
                        <#list errors as error>
                            <div><@spring.message "${error}"/></div>
                        </#list>
                    </div>
                </div>
            </div>
        </#if>
        <div class="container mt-5 px-0">
            <div class="row">
                <div class="col-6 mr-auto">
                    <form action="/admin/subjecttopic/subject/add" method="post">
                        <table class="table table-sm" style="text-align:center">
                            <tbody>
                                <tr>
                                    <td style="border: none"><input class="form-control" type="text" name="subjectName" placeholder="<@spring.message "subject.topic.subject.name"/>"></td>
                                    <td style="border: none"><button style="background-color: #044d58" class="btn btn-primary" type="submit"><@spring.message "subject.topic.button.add"/></button></td>
                                </tr>
                            </tbody>
                        </table>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
                <div class="col-6 ml-auto">
                    <form action="/admin/subjecttopic/topic/add" method="post">
                        <table class="table table-sm" style="text-align:center">
                            <tbody>
                                <tr>
                                    <td style="border: none">
                                        <select class="custom-select" id="subjectSelectorID">
                                            <option <#if !subject??>selected</#if>><@spring.message "subject.topic.choose.subject"/></option>
                                            <#list subjectList as sl>
                                                <option <#if subject?? && subject.ID == sl.ID>selected</#if> value="${sl.ID}">${sl.subjectName}</option>
                                            </#list>
                                        </select>
                                    </td>
                                    <td style="border: none"><input class="form-control" type="text" name="topicName" placeholder="<@spring.message "subject.topic.topic.name"/>"></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="border: none"><button style="background-color: #044d58" class="btn btn-primary" type="submit" onclick="setInputValues()"><@spring.message "subject.topic.button.add"/></button></td>
                                </tr>
                            </tbody>
                        </table>

                        <input type="hidden" name="subjectID" <#if subject??>value="${subject.ID}"</#if>>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
            </div>
        </div>
        <div class="container px-0">
            <form>
                <div class="row">
                    <div class="col-6 mr-auto">
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
                        <div class="col-6 ml-auto">
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
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/subjectTopic.js"></script>
</@c.page>