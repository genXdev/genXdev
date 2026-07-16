# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
