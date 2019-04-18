<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
    <a class="navbar-brand" href="/">
        <img src="/static/img/bsuir.png" width="30" height="30" class="d-inline-block align-top" alt="">
        <@spring.message "navbar.title"/>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/result"><@spring.message "navbar.result"/></a>
            </li>
        </ul>

        <a style="background-color: #044d58" class="btn btn-primary btn-md" href="/login"><@spring.message "navbar.log.in"/></a>
    </div>
</nav>