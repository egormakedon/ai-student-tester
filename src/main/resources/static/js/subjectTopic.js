'use strict'

var csrf = document.getElementById('csrfID');

function hrefToSubjectTopic(subjectID) {
    location.href = hostname + "/admin/subjecttopic?subjectID=" + subjectID;
}

function ajaxRemoveSubject(subjectID) {
    let data = {
        _csrf: csrf.value,
        subjectID: subjectID
    };

    ajaxPost('/admin/subjecttopic/ajax/subject/remove', data, function (result) {
        location.replace(hostname + "/admin/subjecttopic?success=subject.topic.subject.removed.successfully");
    });
}

function ajaxRemoveTopic(topicID) {
    let data = {
        _csrf: csrf.value,
        topicID: topicID
    };

    ajaxPost('/admin/subjecttopic/ajax/topic/remove', data, function (result) {
        let baseUrl = hostname + "/admin/subjecttopic?";
        let parameters = window.location.href.split('?')[1];

        baseUrl = parameters === undefined ? baseUrl : baseUrl + parameters;

        if (new URLSearchParams(window.location.search).get("success") === null) {
            baseUrl = parameters === undefined ? baseUrl + 'success=subject.topic.topic.removed.successfully'
                : baseUrl + '&success=subject.topic.topic.removed.successfully';
        }

        location.replace(baseUrl);
    });
}

function setInputValues() {
    $("input[name='subjectID']").val($('#subjectSelectorID option:selected').attr('value'));
}