# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Выполняет фоновый скрипт опроса в ранее выбранной вкладке веб-браузера.

## Description

Непрерывно выполняет JavaScript на вкладке браузера и обрабатывает результаты через опциональный обратный вызов. Скрипт выполняется в отдельном потоке, чтобы избежать блокировок.

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript код, URL или пути к файлам для выполнения |
| `-InitialUrl` | String | — | — | 1 | — | URL для перехода перед началом опроса |
| `-Callback` | ScriptBlock | — | — | 2 | — | Скрипт обратного вызова для обработки результатов опроса |
| `-Edge` | SwitchParameter | — | — | Named | — | Используйте браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Используйте браузер Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Используйте Microsoft Edge или Google Chrome, в зависимости от того, какой браузер является браузером по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Используйте браузер Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Используйте браузер WebKit, управляемый Playwright |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
