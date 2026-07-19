# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> Navega para uma URL específica na aba atual do navegador.

## Description

Define o local (URL) da guia do navegador web atualmente selecionada. Suporta navegadores Edge e Chrome por meio de opções opcionais. A navegação inclui validação da URL e garante o carregamento adequado da página por meio de operações assíncronas.

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | A URL para navegar |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Evitar seleção automática de guias |
| `-Edge` | SwitchParameter | — | — | Named | — | Navegue usando o navegador Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navegue usando o navegador Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Navegue usando o Microsoft Edge ou o Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Navegue usando o navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Navegue usando o navegador WebKit gerenciado pelo Playwright |
| `-Page` | Object | — | — | Named | — | Referência do objeto de página do navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referência de sessão do navegador |

## Examples

### Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

```powershell
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge
```

### "https://github.com/microsoft" | lt -ch

```powershell
"https://github.com/microsoft" | lt -ch
```

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
