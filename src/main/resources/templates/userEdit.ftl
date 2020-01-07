<#import "parts/common.ftl" as c>

<@c.page>
User Editor

<form action="/user" method="post">
    <input type="text" value="${user.username}" name="username">
    <#list roles as role>
        <div>
            <lable><input type="checkbox" name="${role}" user.roles$seq_conteins(role)?string("checked", "")>${role}</lable>
        </div>
    </#list>
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <input type="hidden" value="${user.id}" name="userId">
    <button type="submit">Accept</button>
</form>
</@c.page>