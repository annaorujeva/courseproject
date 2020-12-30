<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div align="justify">
    <div class="form-group row">
        <label class="col-sm-3 col-form-label"><h5 class="font-weight-light">Имя пользователя:</h5></label>
            <div class="col-sm-7">
            <input type="text" class="form-control" name="username"  placeholder="User name"/>
            </div>
        </label>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 col-form-label"><h5 class="font-weight-light">Пароль:</h5></label>
            <div class="col-sm-7">
            <input type="password" class="form-control" name="password" placeholder="Password"/>
            </div>
        </label>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div class="form-group row" align="center">
        <div class="col-sm-12" >
            <button type="submit" class="btn btn-info col-sm-3">Войти</button>
        </div>
    </div>
    <div class="form-group row" align="center">
        <div class="col-sm-12">
                <#if !isRegisterForm><a href="/registration" class="btn btn-outline-info col-sm-3 m-2" role="button" aria-pressed="true">Зарегистрироваться</a></#if>
        </div>
    </div>
    </div>
</form>

</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit" class="btn btn-outline-info">Выйти</button>
</form>
</#macro>