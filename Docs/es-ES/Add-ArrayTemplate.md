# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Formatea una colección de objetos usando una cadena de plantilla con marcadores de posición de propiedades, generando una sola cadena formateada.

## Description

Itera sobre una colección de objetos y aplica una cadena de plantilla con marcadores de posición {PropertyName} o {PropertyName:format} a cada elemento. Los resultados formateados se unen con un delimitador configurable. Admite sangría, nuevas líneas finales y delimitadores finales para un formato de salida flexible.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | La colección de objetos a formatear |
| `-Template` | String | ✅ | — | 1 | — | La cadena de plantilla con marcadores de posición {NombrePropiedad} o {NombrePropiedad:formato} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | La cadena delimitadora para insertar entre elementos formateados |
| `-Indentation` | Int32 | — | — | 3 | `0` | La cantidad de niveles de sangría (4 espacios por nivel) a aplicar |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Añade un delimitador final después del último elemento |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Agregar delimitador al final cuando la matriz no esté vacía |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Nombre: Alicia
Edad: 30

Nombre: Roberto
Edad: 25

Da formato a una matriz de tablas hash con marcadores de posición de propiedades.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Usa el alias FormatArray con sangría y un delimitador personalizado.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> La colección de objetos a formatear

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> La cadena de plantilla con marcadores de posición {NombrePropiedad} o {NombrePropiedad:formato}

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> La cadena delimitadora para insertar entre elementos formateados

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> La cantidad de niveles de sangría (4 espacios por nivel) a aplicar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> Añade un delimitador final después del último elemento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> Agregar delimitador al final cuando la matriz no esté vacía

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-DoubleEmptyLines.md)
