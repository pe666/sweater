<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> User Name : </label>
        <div class="col-sm-10">
            <input class="form-control ${(usernameError??)?string('is-invalid', '')}" type="text"
                   value="<#if user??>${user.username}</#if>" name="username" placeholder="Username"/>
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Password:  </label>
        <div class="col-sm-10">
            <input class="form-control ${(passwordError??)?string('is-invalid', '')}" type="password"
                   name="password" placeholder="Password"/>
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
    </div>
    <#if isRegisterForm>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Password:  </label>
        <div class="col-sm-10">
            <input class="form-control ${(password2Error??)?string('is-invalid', '')}" type="password"
                   name="password2" placeholder="Password confirmation"/>
            <#if password2Error??>
                <div class="invalid-feedback">
                    ${password2Error}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Email:  </label>
        <div class="col-sm-10">
            <input class="form-control ${(emailError??)?string('is-invalid', '')}" type="email"
                   value="<#if user??>${user.email}</#if>" name="email" placeholder="some@some.com"/>
            <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
            </#if>
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