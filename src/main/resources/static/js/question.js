'use strict';

var csrf = document.getElementById('csrfID');

function getTopicList() {
    $('#topicSelectorID').children('option:not(:first)').remove();

    let topicSelector = document.getElementById('topicSelectorID');
    let subjectID = +$('#subjectSelectorID option:selected').attr('value');

    if (!isNaN(subjectID)) {
        let url = '/admin/question/ajax/topicList/' + subjectID;

        ajaxGet(url, function(result) {
            if (!jQuery.isEmptyObject(result)) {
                for (let i = 0; i < result.length; i++) {
                    let option = document.createElement('option');

                    option.text = result[i].topicName;
                    option.setAttribute('value', result[i].topicID);

                    topicSelector.add(option);
                }
            }
        });
    }
}

function ajaxRemoveQuestion(questionID) {
    let data = {
        _csrf: csrf.value,
        questionID: questionID
    };

    ajaxPost('/admin/question/ajax/remove', data, function (result) {
        let baseUrl = hostname + "/admin/question?";
        let parameters = window.location.href.split('?')[1];

        baseUrl = parameters === undefined ? baseUrl : baseUrl + parameters;

        if (new URLSearchParams(window.location.search).get("removedSuccess") === null) {
            baseUrl = parameters === undefined ? baseUrl + 'removedSuccess' : baseUrl + '&removedSuccess';
        }

        location.replace(baseUrl);
    });
}

function setInputValues() {
    $("input[name='subjectID']").val($('#subjectSelectorID option:selected').attr('value'));
    $("input[name='topicID']").val($('#topicSelectorID option:selected').attr('value'));
}