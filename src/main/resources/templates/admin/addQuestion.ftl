<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "add.question.title">
    <div class="container mt-5">
        <div class="row">
            <div class="col-auto">
                <div class="custom-control custom-radio">
                    <input type="radio" id="addType1ID" name="typeGroup" class="custom-control-input" onchange="getAddQuestionByAddTypeID('1')" <#if addTypeID == "1">checked</#if>>
                    <label class="custom-control-label" for="addType1ID"><@spring.message "add.question.one.question"/></label>
                </div>
            </div>
            <div class="col-auto">
                <div class="custom-control custom-radio">
                    <input type="radio" id="addType2ID" name="typeGroup" class="custom-control-input" onchange="getAddQuestionByAddTypeID('2')" <#if addTypeID == "2">checked</#if>>
                    <label class="custom-control-label" for="addType2ID"><@spring.message "add.question.few.questions"/></label>
                </div>
            </div>
        </div>
        <#if addedSuccessfully??>
            <div class="row mt-5">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        <div><@spring.message "${addedSuccessfully}"/></div>
                    </div>
                </div>
            </div>
        </#if>
        <#if errors??>
            <div class="row mt-5">
                <div class="col">
                    <div class="alert alert-danger" role="alert">
                        <#list errors as error>
                            <#if error?contains(":")>
                                <#assign messages = error?split(":")
                                         code = messages[0]
                                         args = messages[1]?split(";")
                                >
                                <div><@spring.messageArgs code="${code}" args=["${args[0]}", "${args[1]}"]/></div>
                            <#else>
                                <div><@spring.message "${error}"/></div>
                            </#if>
                        </#list>
                    </div>
                </div>
            </div>
        </#if>
    </div>
    <div class="container mt-5">
        <#if addTypeID == "1">
            <form action="/admin/question/add/save" method="post">
                <div class="form-group row">
                    <select class="custom-select" id="topicSelectorID">
                        <option <#if !topic??>selected</#if>><@spring.message "add.question.choose.subject.topic"/></option>
                        <#list reportList as report>
                            <option <#if topic?? && topic.ID == report.topicID>selected</#if> value="${report.topicID}">${report.subjectTopicName}</option>
                        </#list>
                    </select>
                </div>
                <div class="form-group row mt-5">
                    <table class="table table-sm">
                        <tbody>
                            <tr>
                                <td>
                                    <input class="form-control" type="text" name="questionName" value="<#if questionName??>${questionName}</#if>" placeholder="<@spring.message "add.question.question"/>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input class="form-control" type="text" name="firstAnswer" value="<#if firstAnswer??>${firstAnswer}</#if>" placeholder="<@spring.message "add.question.first.answer"/>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input class="form-control" type="text" name="secondAnswer" value="<#if secondAnswer??>${secondAnswer}</#if>" placeholder="<@spring.message "add.question.second.answer"/>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input class="form-control" type="text" name="thirdAnswer" value="<#if thirdAnswer??>${thirdAnswer}</#if>" placeholder="<@spring.message "add.question.third.answer"/>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input class="form-control" type="text" name="fourthAnswer" value="<#if fourthAnswer??>${fourthAnswer}</#if>" placeholder="<@spring.message "add.question.fourth.answer"/>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input class="form-control" type="text" name="fifthAnswer" value="<#if fifthAnswer??>${fifthAnswer}</#if>" placeholder="<@spring.message "add.question.fifth.answer"/>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input class="form-control" type="text" name="rightAnswer" value="<#if rightAnswer??>${rightAnswer}</#if>" placeholder="<@spring.message "add.question.right.answer"/>">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="form-group row mt-5">
                    <button style="background-color: #044d58" class="btn btn-primary" type="submit" onclick="setInputValues()"><@spring.message "add.question.button.save"/></button>
                </div>

                <input type="hidden" name="topicID" <#if topic??>value="${topic.ID}"</#if>>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        <#elseif addTypeID == "2">
            <#--<div class="row mt-5">-->
                <#--<div class="col">-->
                    <#--<div class="alert alert-success" role="alert">-->
                        <#--<div><@spring.message "${addedSuccessfully}"/></div>-->
                    <#--</div>-->
                <#--</div>-->
            <#--</div>-->
            <div class="row mt-5">
                <div class="col">
                    <div>
                        <form action="/admin/question/add/upload" method="post" enctype="multipart/form-data">
                            <div class="form-group row">
                                <input class="form-control-file" type="file" name="file" accept=".doc,.docx,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document">
                            </div>
                            <div class="form-group row mt-5">
                                <button style="background-color: #044d58" class="btn btn-primary" type="submit"><@spring.message "add.question.button.upload.file"/></button>
                            </div>

                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
                    </div>
                </div>
            </div>
        </#if>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/addQuestion.js"></script>
</@c.page>