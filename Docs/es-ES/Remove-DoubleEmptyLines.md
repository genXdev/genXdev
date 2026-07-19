# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Elimina líneas vacías dobles (consecutivas) de una cadena de código, opcionalmente reformateando la salida.

## Description

Limpia el código fuente o texto colapsando líneas en blanco consecutivas en una sola línea vacía. Esto mejora la legibilidad y sigue las convenciones comunes de formato de código. Cuando se especifica el modificador -Reformat, se aplican reglas de formato adicionales para normalizar la estructura del código.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | El código fuente o cadena de texto a procesar para eliminar líneas dobles vacías |
| `-Reformat` | SwitchParameter | — | — | Named | — | Aplica reglas de formato adicionales más allá de la eliminación de líneas en blanco dobles |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Pasa el código fuente a través de la función para eliminar líneas en blanco consecutivas.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Elimina líneas vacías dobles y aplica formato adicional.

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
