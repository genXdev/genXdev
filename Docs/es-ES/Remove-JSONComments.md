# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Elimina comentarios del contenido JSON.

## Description

* Procesa contenido JSON y elimina comentarios tanto de una línea como de varias líneas
  mientras preserva la estructura JSON.
* Útil para limpiar archivos JSON que contienen comentarios de documentación
  antes de analizarlos.
* Soporta tanto comentarios de una línea (//) como comentarios de varias líneas (/* */).

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | Esto es un texto de prueba de ejemplo |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

Elimina los comentarios del contenido JSON almacenado en una variable.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

Procesa contenido JSON del pipeline.

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)
