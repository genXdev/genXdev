# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Formatta una raccolta di oggetti utilizzando una stringa modello con segnaposto di proprietà, producendo una singola stringa formattata.

## Description

Itera su una raccolta di oggetti e applica un modello di stringa con segnaposto {NomeProprietà} o {NomeProprietà:formato} a ciascun elemento. I risultati formattati vengono uniti con un delimitatore configurabile. Supporta indentazione, nuove righe finali e delimitatori finali per una formattazione flessibile dell'output.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | La raccolta di oggetti da formattare |
| `-Template` | String | ✅ | — | 1 | — | La stringa modello con segnaposto {PropertyName} o {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | La stringa delimitatrice da inserire tra gli elementi formattati |
| `-Indentation` | Int32 | — | — | 3 | `0` | Il numero di livelli di indentazione (4 spazi per livello) da applicare |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Aggiunge un delimitatore finale dopo l'ultimo elemento |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Aggiungi delimitatore alla fine quando l'array non è vuoto |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Nome: Alice
Età: 30

Nome: Bob
Età: 25

Formatta una matrice di tabelle hash con segnaposto di proprietà.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Utilizza l'alias FormatArray con indentazione e un delimitatore personalizzato.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> La raccolta di oggetti da formattare

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

> La stringa modello con segnaposto {PropertyName} o {PropertyName:format}

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

> La stringa delimitatrice da inserire tra gli elementi formattati

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

> Il numero di livelli di indentazione (4 spazi per livello) da applicare

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

> Aggiunge un delimitatore finale dopo l'ultimo elemento

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

> Aggiungi delimitatore alla fine quando l'array non è vuoto

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-DoubleEmptyLines.md)
