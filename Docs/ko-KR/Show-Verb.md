# Show-Verb

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `showverbs

## Synopsis

> 모든 PowerShell 동사의 짧은 알파벳순 목록을 표시합니다.

## Description

승인된 PowerShell 동사를 쉼표로 구분된 목록으로 표시합니다. 특정 동사가 입력으로 제공되면 일치하는 동사만 표시됩니다. 와일드카드를 지원합니다.

## Syntax

```powershell
Show-Verb [[-Verb] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Verb` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | 필터링할 동사 패턴을 하나 이상 입력하세요(와일드카드 지원) 🌐 *Supports wildcards* |

## Examples

### Show-Verb Shows all approved PowerShell verbs

```powershell
Show-Verb
Shows all approved PowerShell verbs
```

### Show-Verb -Verb "Get*" Shows all approved verbs starting with "Get"

```powershell
Show-Verb -Verb "Get*"
Shows all approved verbs starting with "Get"
```

### showverbs "Set*", "Get*" Shows all approved verbs starting with "Set" or "Get" using the alias

```powershell
showverbs "Set*", "Get*"
Shows all approved verbs starting with "Set" or "Get" using the alias
```

## Related Links

- [Show-Verb on GitHub](https://github.com/genXdev/genXdev)
