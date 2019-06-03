'use strict';

function getAddQuestionByAddTypeID(addTypeID) {
    location.href = hostname + '/admin/question/add/' + addTypeID;
}

function setInputValues() {
    $("input[name='topicID']").val($('#topicSelectorID option:selected').attr('value'));
}