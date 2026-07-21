# Get-WikipediaSummary

> **Module:** GenXdev.Queries.Text | **Type:** Function | **Aliases:** `wikitxt`

## Synopsis

> विकिपीडिया से किसी विषय का सारांश प्राप्त करता है।

## Description

निर्दिष्ट विषय का संक्षिप्त सारांश प्राप्त करने के लिए विकिपीडिया API से पूछताछ करता है,
बेहतर पठनीयता के लिए कोष्ठक सामग्री को हटाता है।

## Syntax

```powershell
Get-WikipediaSummary -Queries <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | निष्पादित करने के लिए क्वेरी |

## Examples

### Get-WikipediaSummary -Queries "PowerShell"

```powershell
Get-WikipediaSummary -Queries "PowerShell"
```

### wikitxt "PowerShell", "Typescript", "C#"

```powershell
wikitxt "PowerShell", "Typescript", "C#"
```

## Parameter Details

### `-Queries <String[]>`

> निष्पादित करने के लिए क्वेरी

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-NextAffirmation.md)
