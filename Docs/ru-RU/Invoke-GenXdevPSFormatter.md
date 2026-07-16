# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
