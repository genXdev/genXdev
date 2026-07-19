# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Форматирует файлы сценариев PowerShell с использованием правил форматирования PSScriptAnalyzer.

## Description

Эта функция применяет правила форматирования PowerShell к файлам сценариев с помощью командлета Invoke-Formatter из PSScriptAnalyzer. Она может обрабатывать отдельные файлы или рекурсивно форматировать несколько файлов в каталогах. Функция использует настраиваемые параметры форматирования и предоставляет подробное логирование процесса форматирования.

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Указывает путь к файлу сценария для форматирования. |
| `-Settings` | Object | — | — | Named | — | Хэш-таблица настроек или путь к файлу данных PowerShell (.psd1), содержащему параметры форматирования. |
| `-Range` | Int32[] | — | — | Named | — | The range within which formatting should take place as an array of four integers: starting line number, starting column number, ending line number, ending column number. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Рекурсивно обрабатывать файлы в подкаталогах. |

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
