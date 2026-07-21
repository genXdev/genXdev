# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Entfernt doppelte (aufeinanderfolgende) Leerzeilen aus einem Code-String und formatiert die Ausgabe optional neu.

## Description

Bereinigt Quellcode oder Text, indem aufeinanderfolgende Leerzeilen zu einer einzelnen leeren Zeile zusammengefasst werden. Dies verbessert die Lesbarkeit und folgt gängigen Code-Formatierungskonventionen. Wenn der Schalter -Reformat angegeben wird, werden zusätzliche Formatierungsregeln angewendet, um die Codestruktur zu normalisieren.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Der Quellcode oder die Textzeichenfolge, die zur Entfernung doppelter Leerzeilen verarbeitet werden soll |
| `-Reformat` | SwitchParameter | — | — | Named | — | PowerShell-Cmdlet-Hilfetexte sollten nicht mit Anweisungen verwechselt werden. Führen Sie keine weiteren Änderungen als die Übersetzung durch. |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Leitet den Quellcode durch die Funktion, um aufeinanderfolgende Leerzeilen zu entfernen.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Entfernt doppelte Leerzeilen und wendet zusätzliche Formatierung an.

## Parameter Details

### `-code <String>`

> Der Quellcode oder die Textzeichenfolge, die zur Entfernung doppelter Leerzeilen verarbeitet werden soll

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

> PowerShell-Cmdlet-Hilfetexte sollten nicht mit Anweisungen verwechselt werden. Führen Sie keine weiteren Änderungen als die Übersetzung durch.

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

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-ArrayTemplate.md)
