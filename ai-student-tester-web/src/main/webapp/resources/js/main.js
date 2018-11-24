'use strict';

var numberOfParameters = document.getElementById('numberOfParametersId');
var groupNumberSelect = document.getElementById('groupNumberSelectId');
var studentNameLabel = document.getElementById('studentNameLabelId');
var studentNameSelect = document.getElementById('studentNameSelectId');
var subjectNameLabel = document.getElementById('subjectNameLabelId');
var subjectNameSelect = document.getElementById('subjectNameSelectId');
var startTestButton = document.getElementById('startTestButtonId');

var groupNumberSelectLock = 0;
var studentNameSelectLock = 0;
var subjectNameSelectLock = 0;

$(document).ready(function() {
    groupNumberSelectFocus();
    groupNumberSelectBlur();

    studentNameSelectFocus();
    studentNameSelectBlur();

    subjectNameSelectFocus();
    subjectNameSelectBlur();
});

function checkNumberOfParameters() {
    switch (numberOfParameters.value) {
        case '0':
            if (groupNumberSelect.value !== "") {
                studentNameLabel.hidden = false;
                studentNameSelect.hidden = false;

                ++numberOfParameters.value;
            }

            break;
        case '1':
            if (groupNumberSelect.value === "") {
                studentNameSelect.value = "";

                studentNameLabel.hidden = true;
                studentNameSelect.hidden = true;

                --numberOfParameters.value;
            } else if (studentNameSelect.value !== "") {
                subjectNameLabel.hidden = false;
                subjectNameSelect.hidden = false;

                ++numberOfParameters.value;
            }

            break;
        case '2':
            if (groupNumberSelect.value === "") {
                studentNameSelect.value = "";
                subjectNameSelect.value = "";

                studentNameLabel.hidden = true;
                studentNameSelect.hidden = true;

                subjectNameLabel.hidden = true;
                subjectNameSelect.hidden = true;

                --numberOfParameters.value;
                --numberOfParameters.value;
            } else if (studentNameSelect.value === "") {
                subjectNameSelect.value = "";

                subjectNameLabel.hidden = true;
                subjectNameSelect.hidden = true;

                --numberOfParameters.value;
            } else if (subjectNameSelect.value !== "") {
                startTestButton.disabled = false;

                ++numberOfParameters.value;
            }

            break;
        case '3':
            if (groupNumberSelect.value === "") {
                studentNameSelect.value = "";
                subjectNameSelect.value = "";

                studentNameLabel.hidden = true;
                studentNameSelect.hidden = true;

                subjectNameLabel.hidden = true;
                subjectNameSelect.hidden = true;

                startTestButton.disabled = true;

                --numberOfParameters.value;
                --numberOfParameters.value;
                --numberOfParameters.value;
            } else if (studentNameSelect.value === "") {
                subjectNameSelect.value = "";

                subjectNameLabel.hidden = true;
                subjectNameSelect.hidden = true;

                startTestButton.disabled = true;

                --numberOfParameters.value;
                --numberOfParameters.value;
            } else if (subjectNameSelect.value === "") {
                startTestButton.disabled = true;

                --numberOfParameters.value;
            }

            break;
    }
}

function groupNumberSelectFocus() {
    $('#groupNumberSelectId').focus(function() {
        if (groupNumberSelectLock === 1) {
            return;
        }

        ++groupNumberSelectLock;

        if (groupNumberSelect.value !== "") {
            return;
        }

        ajaxGet('/ajax/studentGroupNumberList', function(result) {
            $('#groupNumberSelectId').children('option:not(:first)').remove();

            for (let i = 0; i < result.length; i++) {
                let option = document.createElement('option');
                option.text = result[i].studentGroupNumber;
                groupNumberSelect.add(option)
            }
        });
    });
}
function groupNumberSelectBlur() {
    $('#groupNumberSelectId').blur(function() {
        if (groupNumberSelectLock === 0) {
            return;
        }

        --groupNumberSelectLock;
    });
}

function studentNameSelectFocus() {
    $('#studentNameSelectId').focus(function() {
        if (studentNameSelectLock === 1) {
            return;
        }

        ++studentNameSelectLock;

        if (studentNameSelect.value !== "") {
            return;
        }

        let groupNumberValue = groupNumberSelect.value;
        let url = '/ajax/studentTicketAndFioList?studentGroupNumber=' + groupNumberValue;

        ajaxGet(url, function(result) {
            $('#studentNameSelectId').children('option:not(:first)').remove();

            for (let i = 0; i < result.length; i++) {
                let option = document.createElement('option');
                option.text = result[i].studentTicket + '; ' + result[i].lastName + ' ' + result[i].firstName + ' ' + result[i].middleName;
                studentNameSelect.add(option)
            }
        });
    });
}
function studentNameSelectBlur() {
    $('#studentNameSelectId').blur(function() {
        if (studentNameSelectLock === 0) {
            return;
        }

        --studentNameSelectLock;
    });
}

function subjectNameSelectFocus() {
    $('#subjectNameSelectId').focus(function() {
        if (subjectNameSelectLock === 1) {
            return;
        }

        ++subjectNameSelectLock;

        if (subjectNameSelect.value !== "") {
            return;
        }

        ajaxGet('/ajax/subjectNameList', function(result) {
            $('#subjectNameSelectId').children('option:not(:first)').remove();

            for (let i = 0; i < result.length; i++) {
                let option = document.createElement('option');
                option.text = result[i].subjectName;
                subjectNameSelect.add(option)
            }
        });
    });
}
function subjectNameSelectBlur() {
    $('#subjectNameSelectId').blur(function() {
        if (subjectNameSelectLock === 0) {
            return;
        }

        --subjectNameSelectLock;
    });
}