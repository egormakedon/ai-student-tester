<#ftl encoding="UTF-8">

<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "test.title">
    <div class="container mt-5">
        <blockquote class="blockquote text-center">
            <h4>
                <@spring.message "test.question.number"/>
                ${Session.questionNumber}.
                ${question.questionName}
            </h4>
        </blockquote>
    </div>
    <div class="container mt-5">
        <form>
            <div class="form-group row">
                <div class="col">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="answer1ID" name="answerGroup" class="custom-control-input" onchange="answer1Change()">
                        <label class="custom-control-label" for="answer1ID">1) ${question.firstAnswer}</label>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="answer2ID" name="answerGroup" class="custom-control-input" onchange="answer2Change()">
                        <label class="custom-control-label" for="answer2ID">2) ${question.secondAnswer}</label>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="answer3ID" name="answerGroup" class="custom-control-input" onchange="answer3Change()">
                        <label class="custom-control-label" for="answer3ID">3) ${question.thirdAnswer}</label>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="answer4ID" name="answerGroup" class="custom-control-input" onchange="answer4Change()">
                        <label class="custom-control-label" for="answer4ID">4) ${question.fourthAnswer}</label>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="answer5ID" name="answerGroup" class="custom-control-input" onchange="answer5Change()">
                        <label class="custom-control-label" for="answer5ID">5) ${question.fifthAnswer}</label>
                    </div>
                </div>
            </div>
            <div class="form-group row mt-5">
                <div class="col">
                    <blockquote class="blockquote text-center">
                        <button class="btn btn-primary btn-sm" id="prevButtonID" type="submit" formaction="/test/prevQuestion" formmethod="get"><@spring.message "test.prev.button"/></button>
                        <button class="btn btn-primary btn-sm" id="nextButtonID" type="submit" formaction="/test/nextQuestion" formmethod="get"><@spring.message "test.next.button"/></button>
                    </blockquote>
                </div>
            </div>
            <div class="form-group row mt-3">
                <div class="col">
                    <blockquote class="blockquote text-center">
                        <button class="btn btn-primary btn-sm" id="completeButtonID" type="submit" formaction="/completeTest" formmethod="post"><@spring.message "test.complete.button"/></button>
                    </blockquote>
                </div>
            </div>

            <input id="answerID" type="hidden" name="answer" value="${answer}">

            <input id="csrfID" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </div>

    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/test.js"></script>
</@c.page>