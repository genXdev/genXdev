# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Entfernt Kommentare aus JSON-Inhalten.

## Description

* Verarbeitet JSON-Inhalte und entfernt sowohl einzeilige als auch mehrzeilige Kommentare, während die JSON-Struktur erhalten bleibt.
* Nützlich zum Bereinigen von JSON-Dateien, die Dokumentationskommentare enthalten, bevor sie geparst werden.
* Unterstützt sowohl einzeilige Kommentare (//) als auch mehrzeilige Kommentare (/* */).

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | ["Hallo", "Welt", "dies", "ist", "ein", "Test"] |

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

Entfernt Kommentare aus JSON-Inhalten, die in einer Variable gespeichert sind.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

Verarbeitet JSON-Inhalte aus der Pipeline.

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)
