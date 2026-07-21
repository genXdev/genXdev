# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Удаляет комментарии из содержимого JSON.

## Description

* Обрабатывает содержимое JSON и удаляет как однострочные, так и многострочные
  комментарии, сохраняя структуру JSON.
* Полезно для очистки JSON-файлов, содержащих комментарии документации,
  перед разбором.
* Поддерживает однострочные комментарии (//) и многострочные комментарии (/* */).

## Syntax

```powershell
Remove-JSONComments -Json <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | ---
экспорт-модули

SYNOPSIS
Экспортирует один или несколько модулей.

СИНТАКСИС
Export-ModuleMember [[-Function] <string[]>] [-Cmdlet <string[]>] [-Variable <string[]>] [-Alias <string[]>] [<Общие параметры>]

ОПИСАНИЕ
Командлет `Export-ModuleMember` указывает члены модуля, которые экспортируются из файла скриптового модуля (.psm1) или динамического модуля, созданного с помощью командлета `New-Module`. Экспортированные члены доступны вызывающей стороне модуля. Этот командлет можно использовать только в файле скриптового модуля или в динамическом модуле.

Если файл скриптового модуля не включает команду `Export-ModuleMember`, функции и командлеты в скриптовом модуле экспортируются, но переменные и псевдонимы — нет. Если файл скриптового модуля включает команду `Export-ModuleMember`, экспортируются только члены, указанные в команде `Export-ModuleMember`.

Также можно использовать `Export-ModuleMember` для подавления экспорта членов, которые добавляются в модуль другими командлетами, такими как `Import-Module` или `Add-PSSnapin`, или из других модулей.

Командлет `Export-ModuleMember` создает ошибку, если он не включен в код файла скриптового модуля или динамического модуля.

ПАРАМЕТРЫ
-PSConsoleName <string[]>
Если сценарий выполняется в консоли Windows PowerShell, указывает имя этой консоли.

Обязательно?              false
Позиция?                  именованный
Значение по умолчанию:    нет
Принимает вход по конвейеру? true (ByPropertyName)
Принимает подстановочные знаки? false

-Cmdlet <string[]>
Экспортирует только указанные командлеты из модуля. Командлеты должны быть в модуле. По умолчанию все командлеты экспортируются.

Обязательно?              false
Позиция?                  именованный
Значение по умолчанию:    нет
Принимает вход по конвейеру? true (ByPropertyName)
Принимает подстановочные знаки? false

-Alias <string[]>
Экспортирует только указанные псевдонимы из модуля. По умолчанию псевдонимы не экспортируются.

Обязательно?              false
Позиция?                  именованный
Значение по умолчанию:    все
Принимает вход по конвейеру? false
Принимает подстановочные знаки? false

ИМЯ МОДУЛЯ
Microsoft.PowerShell.Core |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

Удаляет комментарии из содержимого JSON, хранящегося в переменной.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

Обрабатывает JSON-содержимое из конвейера.

## Parameter Details

### `-Json <String>`

> ---
экспорт-модули

SYNOPSIS
Экспортирует один или несколько модулей.

СИНТАКСИС
Export-ModuleMember [[-Function] <string[]>] [-Cmdlet <string[]>] [-Variable <string[]>] [-Alias <string[]>] [<Общие параметры>]

ОПИСАНИЕ
Командлет `Export-ModuleMember` указывает члены модуля, которые экспортируются из файла скриптового модуля (.psm1) или динамического модуля, созданного с помощью командлета `New-Module`. Экспортированные члены доступны вызывающей стороне модуля. Этот командлет можно использовать только в файле скриптового модуля или в динамическом модуле.

Если файл скриптового модуля не включает команду `Export-ModuleMember`, функции и командлеты в скриптовом модуле экспортируются, но переменные и псевдонимы — нет. Если файл скриптового модуля включает команду `Export-ModuleMember`, экспортируются только члены, указанные в команде `Export-ModuleMember`.

Также можно использовать `Export-ModuleMember` для подавления экспорта членов, которые добавляются в модуль другими командлетами, такими как `Import-Module` или `Add-PSSnapin`, или из других модулей.

Командлет `Export-ModuleMember` создает ошибку, если он не включен в код файла скриптового модуля или динамического модуля.

ПАРАМЕТРЫ
-PSConsoleName <string[]>
Если сценарий выполняется в консоли Windows PowerShell, указывает имя этой консоли.

Обязательно?              false
Позиция?                  именованный
Значение по умолчанию:    нет
Принимает вход по конвейеру? true (ByPropertyName)
Принимает подстановочные знаки? false

-Cmdlet <string[]>
Экспортирует только указанные командлеты из модуля. Командлеты должны быть в модуле. По умолчанию все командлеты экспортируются.

Обязательно?              false
Позиция?                  именованный
Значение по умолчанию:    нет
Принимает вход по конвейеру? true (ByPropertyName)
Принимает подстановочные знаки? false

-Alias <string[]>
Экспортирует только указанные псевдонимы из модуля. По умолчанию псевдонимы не экспортируются.

Обязательно?              false
Позиция?                  именованный
Значение по умолчанию:    все
Принимает вход по конвейеру? false
Принимает подстановочные знаки? false

ИМЯ МОДУЛЯ
Microsoft.PowerShell.Core

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-OnEachGenXdevModule.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/WriteFileOutput.md)
