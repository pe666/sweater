<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> User Name : </label>
        <div class="col-sm-10">
            <input class="form-control" type="text" name="username" placeholder="Username"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Password:  </label>
        <div class="col-sm-10">
            <input class="form-control" type="password" name="password" placeholder="Password"/>
        </div>
    </div>
    <#if isRegisterForm>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Email:  </label>
        <div class="col-sm-10">
            <input class="form-control" type="email" name="email" placeholder="some@some.com"/>
        </div>
    </div>
    </#if>
    <input type="hidden", name="_csrf", value="${_csrf.token}">
    <button type="submit" class="btn btn-dark mr-3"><#if isRegisterForm>Sign Up<#else>Sign In</#if></button>
    <#if !isRegisterForm><a href="/registration">Create account</a></#if>



</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden", name="_csrf", value="${_csrf.token}">
    <button type="submit" class="btn btn-dark">Sign Out</button>
</form>
</#macro>