# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Entfernt doppelte (aufeinanderfolgende) Leerzeilen aus einem Code-String, optional mit Neuformatierung der Ausgabe.

## Description

Bereinigt Quellcode oder Text, indem aufeinanderfolgende Leerzeilen zu einer einzigen leeren Zeile zusammengefasst werden. Dies verbessert die Lesbarkeit und folgt gängigen Code-Formatierungskonventionen. Wenn der Schalter -Reformat angegeben ist, werden zusätzliche Formatierungsregeln angewendet, um die Codestruktur zu normalisieren.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Der Quellcode oder die Textzeichenfolge, die zur Entfernung doppelter Leerzeilen verarbeitet werden soll |
| `-Reformat` | SwitchParameter | — | — | Named | — | Wenden Sie zusätzliche Formatierungsregeln über die Entfernung von doppelten Leerzeilen hinaus an. |

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

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
