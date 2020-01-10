<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div><@l.logout /></div>
<span><a href="/user">User list</a></span>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="text", name="text">
        <input type="text", name="tag">
        <input type="file" name="file">
        <button type="submit">Добавить</button>
    </form>
</div>
<div>Список сообщений</div>
<div>
    <form method="get" action="home">
        <input type="text", name="filter" value="${filter!}">
        <button type="submit">Search</button>
    </form>
</div>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
    <div>
        <#if message.filename??>
            <img src="/img/${message.filename}">
        </#if>
    </div>
</div>
<#else>
No messages
</#list>
</@c.page>