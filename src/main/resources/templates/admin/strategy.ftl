<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "../parts/confirmationModal.ftl" as m>
<#import "/spring.ftl" as spring>

<@c.page "strategy.title">
    <div class="container mt-5">
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
        <#if savedSuccessfully??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        <@spring.message "strategy.saved.successfully"/>
                    </div>
                </div>
            </div>
        </#if>
        <div class="row">
            <form action="/admin/strategy/save" method="post">
                <div class="form-group row">
                    <div class="col-auto">
                        <table class="table table-sm table-bordered" style="text-align:center">
                            <thead class="table-info">
                                <tr>
                                    <th scope="col"><@spring.message "strategy.question.number"/></th>
                                    <th scope="col"><@spring.message "strategy.mark"/></th>
                                </tr>
                            </thead>
                            <tbody>
                                <#list markList as m>
                                    <#if m.numberOfRightQuestions <= 10>
                                        <tr>
                                            <td>${m.numberOfRightQuestions}</td>
                                            <td><input class="form-control form-control-sm" type="text"
                                                       name="mark_${m.markID}" value="${m.mark}"></td>
                                        </tr>
                                    </#if>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-auto">
                        <table class="table table-sm table-bordered" style="text-align:center">
                            <thead class="table-info">
                                <tr>
                                    <th scope="col"><@spring.message "strategy.question.number"/></th>
                                    <th scope="col"><@spring.message "strategy.mark"/></th>
                                </tr>
                            </thead>
                            <tbody>
                                <#list markList as m>
                                    <#if m.numberOfRightQuestions gt 10>
                                        <tr>
                                            <td>${m.numberOfRightQuestions}</td>
                                            <td><input class="form-control form-control-sm" type="text"
                                                       name="mark_${m.markID}" value="${m.mark}"></td>
                                        </tr>
                                    </#if>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-auto">
                        <button style="background-color: #044d58" class="btn btn-primary" type="submit"><@spring.message "strategy.button.save"/></button>
                    </div>
                </div>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
</@c.page>