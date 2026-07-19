# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> 指定されたディレクトリ内の画像ファイルの物体検出メタデータを更新します。

## Description

この関数は、指定されたディレクトリ内の画像を処理し、人工知能を使用してオブジェクトを検出します。検出されたオブジェクト、その位置、信頼度スコア、ラベルを含むJSONメタデータファイルを作成します。この関数はバッチ処理をサポートし、設定可能な信頼度しきい値を持ち、既存のメタデータファイルをスキップしたり、以前に失敗した検出を再試行したりすることもできます。

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 処理対象の画像が含まれるディレクトリパス |
| `-Recurse` | SwitchParameter | — | — | Named | — | 指定ディレクトリとすべてのサブディレクトリ内の画像を処理する |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 表情メタデータファイルがまだない画像のみを処理する |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 以前失敗した画像キーワードの更新を再試行します |
| `-Language` | String | — | — | Named | — | 生成された説明とキーワードの言語 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |

## Examples

### Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

この例では、C:\PhotosとD:\Picturesおよびすべてのサブディレクトリ内のすべての画像を、信頼度しきい値0.5のデフォルト設定で処理します。

### Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

この例では、位置パラメータ構文を使用して、複数のディレクトリ内の新しいイメージのみを処理し、以前に失敗したものを再試行します。

### Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `     -ConfidenceThreshold 0.7

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7
```

この例では、GPUアクセラレーションを使用し、0.7の高い信頼度しきい値を設定することで、より正確ながら検出数が少ない物体検出を実現しています。

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
