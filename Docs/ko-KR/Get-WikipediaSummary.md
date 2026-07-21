# Get-WikipediaSummary

> **Module:** GenXdev.Queries.Text | **Type:** Function | **Aliases:** `wikitxt`

## Synopsis

> 위키백과에서 주제에 대한 요약을 검색합니다.

## Description

지정된 주제에 대한 간결한 요약을 얻기 위해 Wikipedia API를 쿼리하며, 가독성을 높이기 위해 괄호 안의 내용을 제거합니다.

## Syntax

```powershell
Get-WikipediaSummary -Queries <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 쿼리를 실행합니다 |

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

> 쿼리를 실행합니다

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

- [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-NextAffirmation.md)
