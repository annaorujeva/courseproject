<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<#include "parts/security.ftl">
<@c.page>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item active" aria-current="page">Учет ПО</li>
    </ol>
</nav>

<div class="card-deck mt-4">
    <div class="card">
    <div class="card-body">
        <h4 class="card-title">Выполнить запрос к БД</h4>
        <p class="card-text">
            В данном разделе Вы можете посмотреть содержимое БД
            и выполнить поиск необходимой информации.
        </p>
        <a href="/reqpage" class="text-info">Перейти в раздел</a>
    </div>
    </div>
    <#if isAdmin>
    <div class="card">
    <div class="card-body">
        <h4 class="card-title">Редактирование БД</h4>
        <p class="card-text">
            В данном разделе админ может управлять содержимым БД,
            а также администрировать пользовательские аккаунты.
        </p>
        <a href="/adminpage" class="text-info">Перейти в раздел</a>
    </div>
    </div>
    </#if>
</div>
</@c.page>