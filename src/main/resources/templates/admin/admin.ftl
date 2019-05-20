<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "../parts/pager.ftl" as p>
<#import "/spring.ftl" as spring>

<@c.page "admin.title">
    <div class="container mt-5">
        <#if RequestParameters.error??>
            <div class="row">
                <div class="col">
                    <div class="alert alert-danger" role="alert">
                        <@spring.message "${RequestParameters.error}"/>
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
                                    <select class="custom-select" id="studentGroupSelectorID" onchange="getStudentList()">
                                        <option <#if !studentGroup??>selected</#if>><@spring.message "admin.choose.group"/></option>
                                        <#list studentGroupList as sg>
                                            <option <#if studentGroup?? && studentGroup.ID == sg.ID>selected</#if> value="${sg.studentGroupID}">${sg.studentGroupNumber}</option>
                                        </#list>
                                    </select>
                                </td>
                                <td>
                                    <select class="custom-select" id="studentSelectorID">
                                        <option <#if !student??>selected</#if>><@spring.message "admin.choose.student"/></option>
                                        <#if studentList??>
                                            <#list studentList as sl>
                                                <option <#if student?? && student.ID == sl.ID>selected</#if> value="${sl.studentID}">${sl.getName()}</option>
                                            </#list>
                                        </#if>
                                    </select>
                                </td>
                                <td>
                                    <button style="background-color: #044d58" class="btn btn-primary" type="submit" onclick="setInputValues()"><@spring.message "admin.button.search"/></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <input type="hidden" name="studentGroupID" <#if studentGroup??>value="${studentGroup.ID}"</#if>>
                    <input type="hidden" name="studentID" <#if student??>value="${student.ID}"</#if>>
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
                <table class="table table-sm table-bordered" style="text-align:center">
                    <thead class="table-info">
                        <tr>
                            <th scope="col"><@spring.message "admin.test.number"/></th>
                            <th scope="col"><@spring.message "admin.group"/></th>
                            <th scope="col"><@spring.message "admin.student"/></th>
                            <th scope="col"><@spring.message "admin.start"/></th>
                            <th scope="col"><@spring.message "admin.finish"/></th>
                            <th scope="col"><@spring.message "admin.duration"/></th>
                            <th scope="col"><@spring.message "admin.mark"/></th>
                        </tr>
                    </thead>
                    <tbody>
                        <#list reportList as report>
                            <tr>
                                <td>${report.testNumber}</td>
                                <td>${report.group}</td>
                                <td>${report.student}</td>
                                <td>${report.start}</td>
                                <td>${report.finish}</td>
                                <td>${report.duration}</td>
                                <td>${report.mark}</td>
                            </tr>
                        </#list>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/admin.js"></script>
</@c.page>