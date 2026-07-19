# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 언어별로 배치 디스크 쓰기를 사용하여 지속적인 번역 캐시를 관리합니다.

## Description

Get-TextTranslation에 대한 모듈 범위의 인메모리 변환 캐시를 유지 관리합니다.
캐시는 $env:LOCALAPPDATA\GenXdev.PowerShell\ 아래에 언어별 JSON 파일로 분할됩니다. 항목 추가 호출은 일괄 처리되어 디스크 쓰기는 언어당 100개의 변이마다 또는 -PersistNow가 호출될 때만 발생합니다. -PersistNow는 또한 처리 배치 전체에서 무제한 증가를 방지하기 위해 인메모리 캐시를 지웁니다.

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | 메모리 내 캐시 해시 테이블 반환 *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | 캐시 항목의 BCP 47 언어 코드 *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | 캐시할 소스 텍스트 *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | 저장할 번역된 텍스트 *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Write all dirty caches to disk and clear memory *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | 메모리 내 캐시를 지우고 모든 디스크 파일을 삭제합니다 *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | 디스크에 있는 모든 언어 캐시에서 번역되지 않은 항목을 제거합니다. *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
