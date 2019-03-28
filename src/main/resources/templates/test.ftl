<#ftl encoding="UTF-8">

<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "test.title">
    <div class="container mt-5">
        <div class="container">
            <blockquote class="blockquote text-center">
                <h4>
                    <@spring.message "test.question.number"/>
                    ${Session.questionNumber}.
                    ${question.questionName}
                </h4>
            </blockquote>
        </div>
        <div class="container">
            <form>
                <div class="container my-5">
                    <nav>
                        <ul class="pagination justify-content-center">
                            <li class="page-item"><a class="page-link" href="/test/prev"><@spring.message "test.prev.button"/></a></li>

                            <#list answerList as answer1>
                                <#if answer1 == 0>
                                    <li class="page-item"><a class="page-link text-white bg-secondary" href="/test/${answer1_index + 1}">${answer1_index + 1}</a></li>
                                <#else>
                                    <li class="page-item"><a class="page-link text-white bg-info" href="/test/${answer1_index + 1}">${answer1_index + 1}</a></li>
                                </#if>
                            </#list>

                            <li class="page-item"><a class="page-link" href="/test/next"><@spring.message "test.next.button"/></a></li>
                        </ul>
                    </nav>
                </div>
                <div class="container">
                    <div class="form-group row">
                        <div class="col">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="answer1ID" name="answerGroup" class="custom-control-input" onchange="answer1Change()">
                                <label class="custom-control-label" for="answer1ID"><p class="h5">1) ${question.firstAnswer}</p></label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="answer2ID" name="answerGroup" class="custom-control-input" onchange="answer2Change()">
                                <label class="custom-control-label" for="answer2ID"><p class="h5">2) ${question.secondAnswer}</p></label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="answer3ID" name="answerGroup" class="custom-control-input" onchange="answer3Change()">
                                <label class="custom-control-label" for="answer3ID"><p class="h5">3) ${question.thirdAnswer}</p></label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="answer4ID" name="answerGroup" class="custom-control-input" onchange="answer4Change()">
                                <label class="custom-control-label" for="answer4ID"><p class="h5">4) ${question.fourthAnswer}</p></label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="answer5ID" name="answerGroup" class="custom-control-input" onchange="answer5Change()">
                                <label class="custom-control-label" for="answer5ID"><p class="h5">5) ${question.fifthAnswer}</p></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <blockquote class="blockquote text-center">
                        <button style="background-color: #044d58" class="btn btn-primary btn-md" type="submit" formmethod="post"><@spring.message "test.complete.button"/></button>
                    </blockquote>
                </div>

                <input id="answerID" type="hidden" name="answer" value="${answer}">

                <input id="csrfID" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
    <script src="/static/js/ajax.js"></script>
    <script src="/static/js/test.js"></script>
</@c.page>