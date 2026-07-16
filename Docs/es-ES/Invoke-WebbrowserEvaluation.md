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
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Código JavaScript, ruta de archivo o URL para ejecutar |
| `-Inspect` | SwitchParameter | — | — | Named | — | Detener en el depurador del navegador antes de ejecutar |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevenir la selección automática de pestañas |
| `-Edge` | SwitchParameter | — | — | Named | — | Usa el navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utiliza el navegador Google Chrome |
| `-Page` | Object | — | — | Named | — | Referencia del objeto de página del navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referencia de sesión del navegador |

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
