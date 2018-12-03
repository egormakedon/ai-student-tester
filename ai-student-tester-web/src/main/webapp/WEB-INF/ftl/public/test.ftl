<#ftl encoding="UTF-8">
<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title><@spring.message "test.title"/></title>
    </head>

    <body>
        <@spring.message "test.question.number"/>
        ${Session.questionNumber}

        <br>

        ${questionAndAnswersDTO.getQuestionName()}

        <br><br>

        <form>
            <input id="csrfId" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input id="answerId" type="hidden" name="answer" value="${questionAndAnswersDTO.getAnswer()}">

            <input id="answerRadioButtonId1" name="answerRadioButtonGroup" type="radio" onchange="answerRadioButton1Change()">
            <label for="answerRadioButtonId1">${questionAndAnswersDTO.getFirstAnswer()}</label>

            <br>

            <input id="answerRadioButtonId2" name="answerRadioButtonGroup" type="radio" onchange="answerRadioButton2Change()">
            <label for="answerRadioButtonId2">${questionAndAnswersDTO.getSecondAnswer()}</label>

            <br>

            <input id="answerRadioButtonId3" name="answerRadioButtonGroup" type="radio" onchange="answerRadioButton3Change()">
            <label for="answerRadioButtonId3">${questionAndAnswersDTO.getThirdAnswer()}</label>

            <br>

            <input id="answerRadioButtonId4" name="answerRadioButtonGroup" type="radio" onchange="answerRadioButton4Change()">
            <label for="answerRadioButtonId4">${questionAndAnswersDTO.getFourthAnswer()}</label>

            <br>

            <input id="answerRadioButtonId5" name="answerRadioButtonGroup" type="radio" onchange="answerRadioButton5Change()">
            <label for="answerRadioButtonId5">${questionAndAnswersDTO.getFifthAnswer()}</label>

            <br><br>

            <input id="prevButtonId" type="submit" formaction="<@spring.url "/test/prevQuestion"/>" formmethod="get" value="<@spring.message "test.prev.button"/>">
            <input id="nextButtonId" type="submit" formaction="<@spring.url "/test/nextQuestion"/>" formmethod="get" value="<@spring.message "test.next.button"/>">

            <br><br>

            <input id="completeButtonId" type="submit" value="<@spring.message "test.complete.button"/>">
        </form>

        <script src="<@spring.url "/resources/js/jquery.js"/>"></script>
        <script src="<@spring.url "/resources/js/ajax.js"/>"></script>
        <script src="<@spring.url "/resources/js/test.js"/>"></script>
    </body>
</html>