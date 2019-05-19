'use strict';

var csrf = document.getElementById('csrfID');

function ajaxRemoveQuestion(questionID) {
    let data = {
        _csrf: csrf.value,
        questionID: questionID
    };

    ajaxPost('/admin/question/ajax/remove', data, function (result) {
        location.replace(hostname + "/admin/question?removedSuccess");
    });
}