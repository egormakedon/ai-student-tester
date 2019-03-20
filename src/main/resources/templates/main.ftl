<#ftl encoding="UTF-8">

<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "main.title">
    <form method="post">
        <div class="container mt-5">
            <#if mainError??>
                <div class="form-group row">
                    <div class="col">
                        <div class="alert alert-danger" role="alert">
                            <@spring.message "${mainError}"/>
                        </div>
                    </div>
                </div>
            </#if>
            <div class="form-group row">
                <div class="col">
                    <select class="custom-select" id="subjectSelectorID">
                        <option selected><@spring.message "main.choose.subject"/></option>
                        <#list subjectList as subject>
                            <option value="${subject.subjectID}">${subject.subjectName}</option>
                        </#list>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <div class="col">
                    <select class="custom-select" id="studentGroupSelectorID" onchange="getStudentList()">
                        <option selected><@spring.message "main.choose.group"/></option>
                        <#list studentGroupList as studentGroup>
                            <option value="${studentGroup.studentGroupID}">${studentGroup.studentGroupNumber}</option>
                        </#list>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <div class="col">
                    <select class="custom-select" id="studentSelectorID">
                        <option selected><@spring.message "main.choose.student"/></option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <div class="col">
                    <blockquote class="blockquote text-center">
                        <button class="btn btn-primary" type="submit" onclick="setInputValues()"><@spring.message "main.button.start.test"/></button>
                    </blockquote>
                </div>
            </div>
        </div>

        <input type="hidden" name="subjectID" value="">
        <input type="hidden" name="studentGroupID" value="">
        <input type="hidden" name="studentID" value="">

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>

    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/main.js"></script>
</@c.page>