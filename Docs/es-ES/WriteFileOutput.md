# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | La información de invocación de la función llamadora |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | El objeto de entrada a procesar, que puede ser una ruta de archivo o un objeto |
| `-Prefix` | String | — | — | Named | — | Un prefijo de cadena opcional para anteponer a la visualización de salida para contexto adicional |
| `-RelativeBasePath` | String | — | — | Named | — | Ruta base para generar rutas de archivo relativas en la salida |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Obliga a la salida a usar rutas absolutas completas en lugar de rutas relativas |

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
