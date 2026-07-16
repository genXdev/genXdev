# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Código JavaScript, caminho de arquivo ou URL para executar |
| `-Inspect` | SwitchParameter | — | — | Named | — | Interromper no depurador do navegador antes de executar |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Evitar seleção automática de guias |
| `-Edge` | SwitchParameter | — | — | Named | — | Use o navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use o navegador Google Chrome |
| `-Page` | Object | — | — | Named | — | Referência do objeto de página do navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referência de sessão do navegador |

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
