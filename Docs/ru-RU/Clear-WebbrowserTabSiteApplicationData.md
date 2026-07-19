# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> Очищает все данные хранилища браузера для текущей вкладки в Edge или Chrome.

## Description

Командлет Clear-WebbrowserTabSiteApplicationData выполняет фрагмент JavaScript, который очищает различные типы хранилищ браузера для текущей вкладки, включая:
- Локальное хранилище
- Хранилище сеансов
- Файлы cookie
- Базы данных IndexedDB
- Кэш-хранилище
- Регистрации сервис-воркеров

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Очистить в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Очистить в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Очистить в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер используется по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Очистить в Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Очистка в управляемом Playwright браузере WebKit |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)
