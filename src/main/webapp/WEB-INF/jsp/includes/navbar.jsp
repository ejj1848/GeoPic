<nav class="navbar navbar-static-top navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <%--HOME--%>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
                <span class="sr-only"> Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"> Home </a>
        </div>
        <div class = "collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav">
                <%--PAGE LINKS--%>
                <li><a href="/city"> City </a> </li>
                <li><a href="/pictures"> Pictures </a> </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <%--login link--%>
                <li> <a href="/logout">Logout</a> </li>
            </ul>
        </div>
    </div>
</nav>