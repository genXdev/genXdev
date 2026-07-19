# Add-ReleaseNoteLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenote

## Synopsis

> READMEファイルにタイムスタンプ付きのReleaseNote行を追加します。

## Description

指定されたREADMEファイルに、現在の日付をyyyyMMdd形式でプレフィックスとして付けたReleaseNote行を追加します。行はコードとして整形でき、オプションで表示できます。

## Syntax

```powershell
Add-ReleaseNoteLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | リリースノートの説明文を追加するテキスト |
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

### Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"

```powershell
Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"
```

### ReleaseNote "Added new Git ReleaseNote" -Code -Show

```powershell
ReleaseNote "Added new Git ReleaseNote" -Code -Show
```

## Related Links

- [Add-ReleaseNoteLineToREADME on GitHub](https://github.com/genXdev/genXdev)
