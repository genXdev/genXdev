# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> Formatea una colección de objetos utilizando una plantilla de cadena con marcadores de posición de propiedades, produciendo una única cadena formateada.

## Description

Itera sobre una colección de objetos y aplica una plantilla de cadena con marcadores de posición {PropertyName} o {PropertyName:format} a cada elemento. Los resultados formateados se unen con un delimitador configurable. Admite sangría, saltos de línea finales y delimitadores finales para un formato de salida flexible.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | La colección de objetos a formatear |
| `-Template` | String | ✅ | — | 1 | — | The template string with {PropertyName} or {PropertyName:format} placeholders |
| `-Delimiter` | String | — | — | 2 | `"`n"` | La cadena delimitadora para insertar entre elementos formateados |
| `-Indentation` | Int32 | — | — | 3 | `0` | El número de niveles de indentación (4 espacios por nivel) a aplicar |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Añade un delimitador final después del último elemento. |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Add delimiter at end when array not empty |

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

Formatea un array de tablas hash con marcadores de posición de propiedades.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Utiliza el alias FormatArray con sangría y un delimitador personalizado.

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
