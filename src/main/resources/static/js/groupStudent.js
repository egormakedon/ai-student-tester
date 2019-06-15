'use strict'

var csrf = document.getElementById('csrfID');

function hrefToGroupStudent(studentGroupID) {
    location.href = hostname + "/admin/groupstudent?studentGroupID=" + studentGroupID;
}

function ajaxRemoveStudentGroup(studentGroupID) {
    let data = {
        _csrf: csrf.value,
        studentGroupID: studentGroupID
    };

    ajaxPost('/admin/groupstudent/ajax/group/remove', data, function (result) {
        location.replace(hostname + "/admin/groupstudent?success=group.student.group.removed.successfully");
    });
}

function ajaxRemoveStudent(studentID) {
    let data = {
        _csrf: csrf.value,
        studentID: studentID
    };

    ajaxPost('/admin/groupstudent/ajax/student/remove', data, function (result) {
        let baseUrl = hostname + "/admin/groupstudent?";
        let parameters = window.location.href.split('?')[1];

        baseUrl = parameters === undefined ? baseUrl : baseUrl + parameters;

        if (new URLSearchParams(window.location.search).get("success") === null) {
            baseUrl = parameters === undefined ? baseUrl + 'success=group.student.student.removed.successfully'
                : baseUrl + '&success=group.student.student.removed.successfully';
        }

        location.replace(baseUrl);
    });
}

function setInputValues() {
    $("input[name='studentGroupID']").val($('#studentGroupSelectorID option:selected').attr('value'));
}