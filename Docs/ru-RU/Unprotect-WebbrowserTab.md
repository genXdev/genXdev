# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> Управляет выбранной вкладкой веб-браузера для интерактивного взаимодействия.

## Description

Эта функция обеспечивает интерактивное управление вкладкой браузера, которая была ранее выбрана с помощью Select-WebbrowserTab. Она предоставляет прямой доступ к свойствам и методам объекта Microsoft Playwright Page, что позволяет автоматизировать взаимодействие с браузером.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Use current tab instead of selecting a new one *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Перезапустить браузер, если не обнаружен сервер отладки *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Related Links

- [Unprotect-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
