<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "admin.manager.title">
    <div class="container mt-5">
        <div class="row">
            <div class="col">
                <div class="alert alert-info" role="alert">
                    <@spring.message "admin.manager.alert.default.password"/>
                </div>
            </div>
        </div>
        <#if validationError??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-danger" role="alert">
                        <@spring.message "admin.manager.validation.username"/>
                    </div>
                </div>
            </div>
        </#if>
        <#if addedSuccessfully??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        <@spring.message "admin.manager.added.successfully"/>
                    </div>
                </div>
            </div>
        </#if>
        <#if droppedSuccessfully??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        <@spring.message "admin.manager.dropped.successfully"/>
                    </div>
                </div>
            </div>
        </#if>
        <div class="row my-4">
            <form action="/admin/manage/add" method="post">
                <div class="form-group row">
                    <label class="col-auto col-form-label" for="usernameID"><@spring.message "admin.manager.add.new.admin"/>:</label>
                    <div class="col-sm">
                        <input class="form-control" id="usernameID" type="text" name="username" placeholder="<@spring.message "admin.manager.username"/>">
                    </div>

                    <div class="col-auto">
                        <button style="background-color: #044d58" class="btn btn-primary" type="submit"><@spring.message "admin.manager.button.add"/></button>
                    </div>
                </div>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
        <div class="row">
            <form action="/admin/manage/dropPassword" method="post">
                <div class="form-group row">
                    <div class="col-auto">
                        <table class="table table-sm table-bordered" style="text-align:center">
                            <thead class="table-info">
                                <tr>
                                    <th scope="col"><@spring.message "admin.manager.id"/></th>
                                    <th scope="col"><@spring.message "admin.manager.display.name"/></th>
                                    <th scope="col"><@spring.message "admin.manager.edit"/></th>
                                </tr>
                            </thead>
                            <tbody>
                                <#list reportList as au>
                                    <tr>
                                        <td>${au.applicationUserID}</td>
                                        <td>${au.displayName}</td>
                                        <td><button class="btn btn-link" type="submit" onclick="setApplicationUserID(${au.applicationUserID})"><@spring.message "admin.manager.link.drop.password"/></button></td>
                                    </tr>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                </div>

                <input type="hidden" name="applicationUserID" value=""/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/adminManager.js"></script>
</@c.page>