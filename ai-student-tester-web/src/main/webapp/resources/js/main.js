'use strict';

function checkNumberOfParameters() {
    var numberOfParameters = document.getElementById('numberOfParametersId');
    var groupNumberSelect = document.getElementById('groupNumberSelectId');
    var studentNameLabel = document.getElementById('studentNameLabelId');
    var studentNameSelect = document.getElementById('studentNameSelectId');
    var subjectNameLabel = document.getElementById('subjectNameLabelId');
    var subjectNameSelect = document.getElementById('subjectNameSelectId');
    var startTestButton = document.getElementById('startTestButtonId');

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

function ajax(url) {
    $.ajax({
        type: 'GET',
        url: "/ajax/studentGroupList",
        success: function(result){
            for (let i = 0; i < result.length; i++) {
                alert(result[i].studentGroupNumber);
            }
        }
    });
}