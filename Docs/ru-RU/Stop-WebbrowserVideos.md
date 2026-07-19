# Stop-WebbrowserVideos

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbsst, `ssst, `wbvideostop

## Synopsis

> Приостанавливает воспроизведение видео во всех активных сеансах браузера.

## Description

Перебирает все активные сеансы браузера и приостанавливает воспроизведение видео с помощью команд JavaScript. Функция сохраняет исходное состояние сеанса и корректно обрабатывает ошибки.

## Syntax

```powershell
Stop-WebbrowserVideos [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывается в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывается в Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Использует управляемый Playwright браузер WebKit |

## Examples

### Stop-WebbrowserVideos

```powershell
Stop-WebbrowserVideos
```

### wbsst ##############################################################################

```powershell
wbsst
##############################################################################
```

## Related Links

- [Stop-WebbrowserVideos on GitHub](https://github.com/genXdev/genXdev)
