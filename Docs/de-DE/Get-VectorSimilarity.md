# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Kosinusähnlichkeit zwischen zwei Vektoren.

## Description

Nimmt zwei numerische Vektoren (Arrays) als Eingabe und berechnet deren Kosinusähnlichkeit. Das Ergebnis gibt an, wie eng die Vektoren miteinander verwandt sind, wobei 0 völlige Unähnlichkeit und 1 vollständige Identität bedeutet.

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | Erstes Vektorarray von Zahlen |
| `-Vector2` | Double[] | ✅ | — | 1 | — | Zweites Vektor-Array von Zahlen |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

Gibt ungefähr 0,998 zurück, was auf eine hohe Ähnlichkeit hinweist.

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
