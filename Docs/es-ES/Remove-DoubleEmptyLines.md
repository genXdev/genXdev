# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Elimina las líneas vacías dobles (consecutivas) de una cadena de código y, opcionalmente, reformatea la salida.

## Description

Limpia el código fuente o el texto colapsando líneas en blanco consecutivas en una única línea vacía. Esto mejora la legibilidad y sigue las convenciones comunes de formato de código. Cuando se especifica el conmutador -Reformat, se aplican reglas de formato adicionales para normalizar la estructura del código.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | El código fuente o la cadena de texto a procesar para eliminar líneas dobles vacías |
| `-Reformat` | SwitchParameter | — | — | Named | — | Aplique reglas de formato adicionales más allá de la eliminación de líneas vacías dobles |

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

Elimina líneas dobles vacías y aplica formato adicional.

## Parameter Details

### `-code <String>`

> El código fuente o la cadena de texto a procesar para eliminar líneas dobles vacías

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> Aplique reglas de formato adicionales más allá de la eliminación de líneas vacías dobles

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-ArrayTemplate.md)
