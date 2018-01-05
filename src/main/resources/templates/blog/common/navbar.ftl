<#import "/spring.ftl" as spring />
<script type="application/javascript">
    function logout() {
        $("#logout").ajax({},{})
    }
</script>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">我的博客</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class=""><a href="listAllArticleView">文章列表</a></li>
                <li class="active"><a href="addArticleView">写文章</a></li>
                <li><a href="#">关于</a></li>
                <li class="dropdown">
                    <a href="http://www.jianshu.com/nb/12976878" class="dropdown-toggle" data-toggle="dropdown">
                        Kotlin <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="http://www.jianshu.com/nb/12976878" target="_blank">我的信息</a></li>
                        <li class="divider"></li>
                        <li><a href="#">修改用户信息</a></li>
                        <li><a href="#">个人博客</a></li>
                        <li><a href="#">个人信息</a></li>
                        <li class="divider"></li>
                        <li><form id="logout" action="<@spring.url '/logout' />" method="POST" ><input type="submit" id="logout" name="submit" />
                            <input type="hidden" name="_csrf" value="${_csrf.token}"></form></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
