<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div><@l.logout /></div>
<div>
    <form method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="text", name="text">
        <input type="text", name="tag">
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
</div>
<#else>
No messages
</#list>
</@c.page>