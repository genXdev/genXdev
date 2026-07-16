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
| `-GetCache` | SwitchParameter | — | — | Named | — | メモリ内キャッシュハッシュテーブルを返す *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | BCP 47 キャッシュエントリの言語コード *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | キャッシュするソーステキスト *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | あなたはJSONを出力するために設計された親切なアシスタントです。 *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | すべてのダーティキャッシュをディスクに書き込み、メモリをクリアする *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | メモリ内キャッシュをクリアし、すべてのディスクファイルを削除する *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | ディスク上のすべての言語キャッシュから未翻訳のエントリを削除します *(Parameter set: )* |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
