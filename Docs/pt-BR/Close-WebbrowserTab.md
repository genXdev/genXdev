# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct, `CloseTab

## Synopsis

> Fecha a aba atualmente selecionada do navegador.

## Description

Fecha a aba do navegador atualmente selecionada usando o método CloseAsync() do ChromeDriver. Se nenhuma aba estiver selecionada no momento, a função tentará automaticamente selecionar a última aba usada antes de fechá-la.

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Navegue usando o navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navegue usando o navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre no Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Usa o navegador WebKit gerenciado pelo Playwright |

## Examples

### Close-WebbrowserTab Closes the currently active browser tab

```powershell
Close-WebbrowserTab
Closes the currently active browser tab
```

### ct Uses the alias to close the currently active browser tab

```powershell
ct
Uses the alias to close the currently active browser tab
```

## Related Links

- [Close-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
