<#macro searchpcbyid>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item"><a href="/main" class="text-info">Учет ПО</a></li>
        <li class="breadcrumb-item"><a href="/reqpage" class="text-info">Выбор запроса</a></li>
        <li class="breadcrumb-item active" aria-current="page">Найти ПК</li>
    </ol>
</nav>


<form class="form-inline" method="get" action="/searchpcbyid">
<input type="hidden" name="_csrf" value="${_csrf.token}"/>
  <div class="form-group mx-sm-7">
  <label for="TextInput" class="mx-3 my-2">Введите id компьютера:</label>
  <input type="text" class="form-control mx-3 my-2" name="filter" value="${filter?ifExists}"/>
  <button type="submit" class="btn btn-outline-info mx-2 my-2">Найти</button>
  </div>
</form>

<div class="m-3">Список найденных компьютеров:</div>
<div>
    <table class="table table-bordered">
        <thead>
        <tr align="center">
            <th>id ПК</th>
            <th>Аудитория</th>
        </tr>
        </thead>
        <tbody>
        <#list computers as computer>
        <tr>
            <td>${computer.idPC}</td>
            <td>${computer.idRoom}</td>
        </tr>
        <#else>
        <div align="center" class="m-2 text-danger"><h3 class="font-weight-light">Компьютер не найден!</h3></div>
        </#list>
        </tbody>
    </table>
</div>
</#macro>

<#macro searchprogrambyidname>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item"><a href="/main" class="text-info">Учет ПО</a></li>
        <li class="breadcrumb-item"><a href="/reqpage" class="text-info">Выбор запроса</a></li>
        <li class="breadcrumb-item active" aria-current="page">Найти ПО</li>
    </ol>
</nav>

<form class="form-inline" method="get" action="/searchprog">
<input type="hidden" name="_csrf" value="${_csrf.token}"/>
  <div class="form-group mx-sm-7">
  <label for="TextInput" class="mx-3 my-2">Введите id компьютера:</label>
  <input type="text" class="form-control mx-3 my-2" name="filter1" value="${filter1?ifExists}"/>
  <label for="TextInput" class="mx-3 my-2">Название ПО:</label>
  <input type="text" class="form-control mx-3 my-2" name="filter2" value="${filter2?ifExists}"/>
  <button type="submit" class="btn btn-outline-info mx-2 my-2">Найти</button>
  </div>
</form>

<div class="m-3">Список найденных программ:</div>
<div>
    <table class="table table-bordered">
        <thead>
        <tr align="center">
            <th>id ПК</th>
            <th>Название ПО</th>
            <th>Версия</th>
            <th>Производитель</th>
        </tr>
        </thead>
        <tbody>
        <#list programs as program>
        <tr>
            <td>${program.idPC}</td>
            <td>${program.programName}</td>
            <td>${program.version}</td>
            <td>${program.producer}</td>
        </tr>
        <#else>
        <div align="center" class="m-2 text-danger"><h3 class="font-weight-light">Программа не найдена!</h3></div>
        </#list>
        </tbody>
    </table>
</div>
</#macro>