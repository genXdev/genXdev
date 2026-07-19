# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 言語ごとにバッチ書き込みで永続的な翻訳キャッシュを管理します。

## Description

Get-TextTranslation のモジュールスコープのメモリ内変換キャッシュを維持します。
キャッシュは $env:LOCALAPPDATA\GenXdev.PowerShell 下の言語ごとの JSON ファイルに分割されます。エントリの追加呼び出しはバッチ処理され、ディスクへの書き込みは言語あたり100回の変更ごと、または -PersistNow が呼び出された場合にのみ行われます。-PersistNow はまた、処理バッチ間での無制限の成長を防ぐためにメモリ内キャッシュをクリアします。

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
