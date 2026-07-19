# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature

## Synopsis

> READMEファイルにタイムスタンプ付きの機能行を追加します。

## Description

指定されたREADMEファイルに機能行を追加し、yyyyMMdd形式の現在日付を先頭に付けます。行はコードとしてフォーマットでき、オプションで表示できます。

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | 添加する機能説明テキスト |
| `-Code` | SwitchParameter | — | — | Named | — | The `-Code` parameter. |
| `-Show` | SwitchParameter | — | — | Named | — | # Project Title

## Description

This is a sample README file.

## Installation

```bash
npm install
```

## Usage

```bash
npm start
```

## License

MIT |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | ホームディレクトリのREADMEを使用 |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive ディレクトリ内の README を使用してください |
| `-Priority` | Int32 | — | — | Named | `1` | ソート優先度（高いほど先に表示、デフォルトは1） |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 行を優先度ではなく日付（yyyyMMddプレフィックス）で並べ替える |
| `-Ascending` | SwitchParameter | — | — | Named | — | 並び順を逆にする（降順ではなく昇順） |
| `-First` | Int32 | — | — | Named | `0` | 制限 - 出力を最初のN行だけ表示 |

## Examples

### Add-FeatureLineToREADME -Line "Added new Git feature"

```powershell
Add-FeatureLineToREADME -Line "Added new Git feature"
```

### feature "Added new Git feature" -Code -Show

```powershell
feature "Added new Git feature" -Code -Show
```

## Related Links

- [Add-FeatureLineToREADME on GitHub](https://github.com/genXdev/genXdev)
