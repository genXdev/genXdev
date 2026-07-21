# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يقوم بتحليل السلاسل النصية لأي URI صالح.

## Description

* يستخرج جميع عناوين URI الصالحة من النص المدخل، ويدعم أنماط URI القياسية والمخصصة مثل http:، https:، ftp:، magnet:، about:، إلخ.
* يُرجع كائنات Uri لكل عنوان URI صالح يتم العثور عليه.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | نص إدخال قد يحتوي على URIs |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

يقوم بتحليل سلسلة النص المقدمة للبحث عن محددات مواقع الموارد الموحدة (URIs) وإرجاع كائنات Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

يقوم بتوجيه سلسلة نصية إلى الأمر cmdlet لتحليل URI.

## Parameter Details

### `-Text <String[]>`

> نص إدخال قد يحتوي على URIs

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-AllPossibleQueries.md)
