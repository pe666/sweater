<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffff00;">
    <a class="navbar-brand" href="/">Sweater</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/home">Messages <span class="sr-only">(current)</span></a>
            </li>
            <#if isAdmin>
            <li class="nav-item active">
                <a class="nav-link" href="/user">UserList <span class="sr-only">(current)</span></a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item active">
                <a class="nav-link" href="/user/profile">Profile <span class="sr-only">(current)</span></a>
            </li>
            </#if>
        </ul>
        <div class="navbar-text mr-2">${name}</div>
        <#if user??>
        <div><@l.logout /></div>
        </#if>
    </div>
</nav>