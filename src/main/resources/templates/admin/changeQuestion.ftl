<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "change.question.title">
    <div class="container mt-5">
        <#if questionError??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-danger" role="alert">
                        <@spring.message "${questionError}"/>
                    </div>
                </div>
            </div>
        <#else>
            <#if success??>
                <div class="row">
                    <div class="col">
                        <div class="alert alert-success" role="alert">
                            <@spring.message "change.question.saved.successfully"/>
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
            <div class="row">
                <div class="col">
                    <form action="/admin/question/change/save" method="post">
                        <div class="form-group row">
                            <table class="table table-sm">
                                <tbody>
                                <tr>
                                    <td><@spring.message "change.question.question"/>:</td>
                                    <td><input class="form-control" type="text" name="questionName" value="${questionName}"></td>
                                </tr>
                                <tr>
                                    <td><@spring.message "change.question.first.answer"/>:</td>
                                    <td><input class="form-control" type="text" name="firstAnswer" value="${firstAnswer}"></td>
                                </tr>
                                <tr>
                                    <td><@spring.message "change.question.second.answer"/>:</td>
                                    <td><input class="form-control" type="text" name="secondAnswer" value="${secondAnswer}"></td>
                                </tr>
                                <tr>
                                    <td><@spring.message "change.question.third.answer"/>:</td>
                                    <td><input class="form-control" type="text" name="thirdAnswer" value="${thirdAnswer}"></td>
                                </tr>
                                <tr>
                                    <td><@spring.message "change.question.fourth.answer"/>:</td>
                                    <td><input class="form-control" type="text" name="fourthAnswer" value="${fourthAnswer}"></td>
                                </tr>
                                <tr>
                                    <td><@spring.message "change.question.fifth.answer"/>:</td>
                                    <td><input class="form-control" type="text" name="fifthAnswer" value="${fifthAnswer}"></td>
                                </tr>
                                <tr>
                                    <td><@spring.message "change.question.right.answer"/>:</td>
                                    <td><input class="form-control" type="text" name="rightAnswer" value="${rightAnswer}"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="form-group row">
                            <button style="background-color: #044d58" class="btn btn-primary" type="submit"><@spring.message "change.question.button.save"/></button>
                        </div>

                        <input type="hidden" name="questionID" value="${questionID}"/>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
            </div>
        </#if>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
</@c.page>