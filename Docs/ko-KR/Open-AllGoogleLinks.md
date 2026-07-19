# Open-AllGoogleLinks

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinks

## Synopsis

> 무한 자동 구글 검색을 수행합니다.

## Description

구글 검색을 수행합니다.
매번 10개의 탭을 열고, 초기 탭으로 돌아올 때까지 대기합니다.
초기 탭을 닫으면 중지됩니다.

## Syntax

```powershell
Open-AllGoogleLinks -Queries <String[]> [-Language <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | 수행할 쿼리 |
| `-Language` | String | — | — | Named | — | 반환된 검색 결과의 언어 |

## Examples

### PS C:\>

```powershell
PS C:\>
```

Open-AllGoogleLinks "site:github.com PowerShell module"

## Related Links

- [Open-AllGoogleLinks on GitHub](https://github.com/genXdev/genXdev)
