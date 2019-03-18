<#ftl encoding="UTF-8">

<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "main.title">
    <form method="post">
        <div class="container mt-5">
            <div class="form-group row">
                <div class="col">
                    <select class="custom-select">
                        <option selected><@spring.message "main.choose.group"/></option>
                        <#list subjectList as subject>
                            <option name="subject">${subject.subjectName}</option>
                        </#list>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <div class="col">
                    <select class="custom-select" id="studentGroupSelectorID" onchange="getStudentList()">
                        <option selected><@spring.message "main.choose.group"/></option>
                        <#list studentGroupList as studentGroup>
                            <option name="studentGroup">${studentGroup.studentGroupNumber}</option>
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
                    <button class="btn btn-primary" type="submit"><@spring.message "main.button.start.test"/></button>
                </div>
            </div>
        </div>

        <input type="hidden" name="${_csrf}" value="${_csrf.token}"/>
    </form>

    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/main.js"></script>
</@c.page>