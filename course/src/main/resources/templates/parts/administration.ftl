<#macro addprogram>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item"><a href="/main" class="text-info">Учет ПО</a></li>
        <li class="breadcrumb-item"><a href="/adminpage" class="text-info">Редактирование БД</a></li>
        <li class="breadcrumb-item active" aria-current="page">Добавление ПО</li>
    </ol>
</nav>

<form action="/addprog" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div class ="my-4 ">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Добавьте id ПК:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="idPC" />
            </div>
            </label>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Добавьте название ПО:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="programName" />
            </div>
            </label>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Добавьте версию ПО:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="version" />
            </div>
            </label>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Добавьте производителя ПО:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="producer" />
            </div>
            </label>
        </div>
        <div class="form-group row" align="right">
            <div class="col-sm-7" >
                <button type="submit" class="btn btn-outline-info col-sm-3">Добавить в базу</button>
            </div>
        </div>

    </div>
    </div>
</form>


</#macro>

<#macro addcomputer>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item"><a href="/main" class="text-info">Учет ПО</a></li>
        <li class="breadcrumb-item"><a href="/adminpage" class="text-info">Редактирование БД</a></li>
        <li class="breadcrumb-item active" aria-current="page">Добавление ПК</li>
    </ol>
</nav>


<form action="/addpc" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div class ="my-4">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Добавьте id ПК:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="idPC" />
            </div>
            </label>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Добавьте № аудитории:</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="idRoom" />
            </div>
            </label>
        </div>
        <div class="form-group row" align="right">
            <div class="col-sm-7" >
                <button type="submit" class="btn btn-outline-info col-sm-3">Добавить в базу</button>
            </div>
        </div>

    </div>
    </div>
</form>
</#macro>
