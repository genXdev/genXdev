# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Windows Defender を使用してファイルやディレクトリのマルウェアスキャンを行います。

## Description

* Windows Defenderのコマンドラインインターフェイス（MpCmdRun.exe）を使用して、指定されたファイルまたはディレクトリのターゲットスキャンを実行します。
* 検出のみモード、または自動脅威修復を有効にしてスキャンできます。
* 脅威が検出されない場合はtrue、脅威が見つかった場合またはスキャンが失敗した場合はfalseを返します。

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | スキャンするファイルまたはディレクトリへのパス |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Windows Defenderに脅威への対応を指示する |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

指定されたファイルをスキャンし、詳細な出力を表示します。

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

エイリアスを使用してファイルをスキャンし、修復を有効にします。

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

エイリアスを使用してファイルパスをコマンドレットにパイプします。

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
