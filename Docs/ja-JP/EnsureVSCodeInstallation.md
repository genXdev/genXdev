# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Visual Studio Codeをインストールし、推奨される拡張機能で設定します。

## Description

Visual Studio Code がインストールされているか確認し、インストールされていない場合は WinGet を使用してインストールします。ユーザー設定、キーバインディングを構成し、ワークスペース構成から推奨される拡張機能をインストールします。また、PSGallery を信頼されたリポジトリとして設定し、特定の拡張機能設定を構成します。

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Related Links

- [EnsureVSCodeInstallation on GitHub](https://github.com/genXdev/genXdev)
