<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "/spring.ftl" as spring>
<#import "../parts/confirmationModal.ftl" as m>

<@c.page "group.student.title">
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
                    <form action="/admin/groupstudent/group/add" method="post">
                        <table class="table table-sm" style="text-align:center">
                            <tbody>
                                <tr>
                                    <td style="border: none"><input class="form-control" type="text" name="studentGroupNumber" placeholder="<@spring.message "group.student.group.number"/>"></td>
                                    <td style="border: none"><button style="background-color: #044d58" class="btn btn-primary" type="submit"><@spring.message "group.student.button.add"/></button></td>
                                </tr>
                            </tbody>
                        </table>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
                <div class="col-6 ml-auto">
                    <form action="/admin/groupstudent/student/add" method="post">
                        <table class="table table-sm" style="text-align:center">
                            <tbody>
                                <tr>
                                    <td style="border: none" colspan="3">
                                        <select class="custom-select">
                                            <option <#if !studentGroup??>selected</#if>><@spring.message "group.student.choose.group"/></option>
                                            <#list studentGroupList as sg>
                                                <option <#if studentGroup?? && studentGroup.ID == sg.ID>selected</#if> value="${sg.ID}">${sg.studentGroupNumber}</option>
                                            </#list>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: none"><input class="form-control" type="text" name="lastName" placeholder="<@spring.message "group.student.lastname"/>"></td>
                                    <td style="border: none"><input class="form-control" type="text" name="firstName" placeholder="<@spring.message "group.student.firstname"/>"></td>
                                    <td style="border: none"><input class="form-control" type="text" name="middleName" placeholder="<@spring.message "group.student.middlename"/>"></td>
                                </tr>
                                <tr>
                                    <td style="border: none" colspan="3"><input class="form-control" type="text" name="studentTicket" placeholder="<@spring.message "group.student.student.ticket"/>"></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="border: none"><button style="background-color: #044d58" class="btn btn-primary" type="submit"><@spring.message "group.student.button.add"/></button></td>
                                </tr>
                            </tbody>
                        </table>

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
                                    <th scope="col"><@spring.message "group.student.group"/></th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <#list studentGroupList as sg>
                                    <tr>
                                        <td <#if studentGroup?? && studentGroup.ID = sg.ID>class="table-secondary"</#if>
                                            onclick="hrefToGroupStudent(${sg.ID})">${sg.studentGroupNumber}</td>
                                        <td>
                                            <button style="color: red" class="btn btn-link" type="button" data-toggle="modal"
                                                    data-target="#confirmationModalStudentGroup${sg.ID}"><@spring.message "group.student.link.remove"/></button>
                                            <@m.confirmationModal "confirmationModalStudentGroup${sg.ID}" "group.student.group.remove.confirmation.modal.title"
                                                "group.student.group.remove.confirmation.modal.body" "" "ajaxRemoveStudentGroup(${sg.ID})"/>
                                        </td>
                                    </tr>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                    <#if studentGroup??>
                        <div class="col-6 ml-auto">
                            <table class="table table-sm table-bordered" style="text-align:center">
                                <thead class="table-info">
                                    <tr>
                                        <th scope="col"><@spring.message "group.student.lastname"/></th>
                                        <th scope="col"><@spring.message "group.student.firstname"/></th>
                                        <th scope="col"><@spring.message "group.student.middlename"/></th>
                                        <th scope="col"><@spring.message "group.student.student.ticket"/></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <#list studentList as st>
                                        <tr>
                                            <td>${st.lastName}</td>
                                            <td>${st.firstName}</td>
                                            <td>${st.middleName}</td>
                                            <td>${st.studentTicket}</td>
                                            <td>
                                                <button style="color: red" class="btn btn-link" type="button" data-toggle="modal"
                                                        data-target="#confirmationModalStudent${st.ID}"><@spring.message "group.student.link.remove"/></button>
                                                <@m.confirmationModal "confirmationModalStudent${st.ID}" "group.student.student.remove.confirmation.modal.title"
                                                    "group.student.student.remove.confirmation.modal.body" "" "ajaxRemoveStudent(${st.ID})"/>
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
    <script src="/static/js/groupStudent.js"></script>
</@c.page>