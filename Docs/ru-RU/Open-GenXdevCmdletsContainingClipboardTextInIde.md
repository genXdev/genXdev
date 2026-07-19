# Open-GenXdevCmdletsContainingClipboardTextInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `vscodesearch

## Synopsis

> Открывает файлы в IDE, содержащие текст из буфера обмена

## Description

Текст из буфера обмена используется для поиска во всех скриптах GenXdev, и при обнаружении открывает этот файл в Code или Visual Studio.

## Syntax

```powershell
Open-GenXdevCmdletsContainingClipboardTextInIde [[-InputObject] <String>] [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String | — | ✅ (ByValue) | 0 | — | Search for clipboard text in all GenXdev scripts |
| `-Copilot` | SwitchParameter | — | — | Named | — | Добавить исходный файл в сеанс редактирования Copilot |

## Related Links

- [Open-GenXdevCmdletsContainingClipboardTextInIde on GitHub](https://github.com/genXdev/genXdev)
