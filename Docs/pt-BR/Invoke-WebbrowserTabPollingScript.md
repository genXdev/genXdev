# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Executa um script de polling em segundo plano em uma aba do navegador previamente selecionada.

## Description

Executa continuamente JavaScript em uma aba do navegador e processa os resultados por meio de um callback opcional. O script é executado em uma thread separada para evitar bloqueio.

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Código JavaScript, URLs ou caminhos de arquivo para executar |
| `-InitialUrl` | String | — | — | 1 | — | URL para navegar antes do início da votação |
| `-Callback` | ScriptBlock | — | — | 2 | — | Script de callback para processar resultados de enquete |
| `-Edge` | SwitchParameter | — | — | Named | — | Use o navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use o navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use o Microsoft Edge ou o Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use o navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use o navegador WebKit gerenciado pelo Playwright |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
