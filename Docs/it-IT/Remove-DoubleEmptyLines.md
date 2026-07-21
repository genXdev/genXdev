# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Rimuove le righe vuote doppie (consecutive) da una stringa di codice, opzionalmente riformattando l'output.

## Description

Pulisce il codice sorgente o il testo comprimendo righe vuote consecutive in una singola riga vuota. Questo migliora la leggibilità e segue le convenzioni comuni di formattazione del codice. Quando è specificato il parametro -Reformat, vengono applicate regole di formattazione aggiuntive per normalizzare la struttura del codice.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Il codice sorgente o la stringa di testo da elaborare per la rimozione di righe vuote doppie |
| `-Reformat` | SwitchParameter | — | — | Named | — | Applica regole di formattazione aggiuntive oltre alla rimozione delle righe vuote doppie |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Filtra il codice sorgente attraverso la funzione per rimuovere le righe vuote consecutive.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Rimuove le righe vuote doppie e applica una formattazione aggiuntiva.

## Parameter Details

### `-code <String>`

> Il codice sorgente o la stringa di testo da elaborare per la rimozione di righe vuote doppie

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

> Applica regole di formattazione aggiuntive oltre alla rimozione delle righe vuote doppie

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

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Add-ArrayTemplate.md)
