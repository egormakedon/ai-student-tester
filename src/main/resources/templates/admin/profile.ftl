<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "../parts/confirmationModal.ftl" as m>
<#import "/spring.ftl" as spring>

<@c.page "profile.title">
    <div class="container mt-5">
        <#if errors?? && errors?size == 0>
            <div class="row">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        <@spring.message "profile.saved.successfully"/>
                    </div>
                </div>
            </div>
        <#elseif errors??>
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
        <div class="row">
            <div class="col-auto">
                <table class="table">
                    <tbody>
                        <tr class="table-secondary">
                            <td class="col-auto"><@spring.message "profile.username"/>:</td>
                            <td class="col-auto">${username}</td>
                        </tr>
                        <tr class="table-secondary">
                            <td class="col-auto"><@spring.message "profile.roles"/>:</td>
                            <td class="col-auto">
                                <#list roles as role>
                                    ${role}<#sep>,
                                </#list>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col">
                <form action="/admin/profile/save" method="post">
                    <div class="form-group row">
                        <label class="col-auto col-form-label" for="displayNameID"><@spring.message "profile.display.name"/>:</label>
                        <div class="col-sm-3">
                            <input class="form-control" id="displayNameID" type="text" name="displayName" value="${displayName}">
                        </div>
                    </div>
                    <div class="form-group row mt-5">
                        <label class="col-auto col-form-label" for="oldPasswordID"><@spring.message "profile.old.password"/>:</label>
                        <div class="col-sm-3">
                            <input class="form-control" id="oldPasswordID" type="password" name="oldPassword">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-auto col-form-label" for="newPasswordID"><@spring.message "profile.new.password"/>:</label>
                        <div class="col-sm-3">
                            <input class="form-control" id="newPasswordID" type="password" name="newPassword">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-auto col-form-label" for="confirmationPasswordID"><@spring.message "profile.confirmation.password"/>:</label>
                        <div class="col-sm-3">
                            <input class="form-control" id="confirmationPasswordID" type="password" name="confirmationPassword">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-auto">
                            <button style="background-color: #044d58" class="btn btn-primary btn-md" type="submit"><@spring.message "profile.save"/></button>
                        </div>
                    </div>

                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col">
                <form>
                    <div class="form-group row">
                        <div class="col-auto">
                            <button class="btn btn-danger" type="button" data-toggle="modal" data-target="#confirmationModalID"><@spring.message "profile.remove.account"/></button>
                        </div>
                    </div>

                    <input id="csrfID" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
    </div>

    <@m.confirmationModal "confirmationModalID" "profile.remove.confirmation.modal.title" "profile.remove.confirmation.modal.body" "" "ajaxRemoveProfile()"/>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/profile.js"></script>
</@c.page>