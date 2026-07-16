# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | インストールされているアプリケーションまたはソフトウェアの名前。 |
| `-Source` | String | ✅ | — | 1 | — | インストールのソース（例：Winget、PowerShell Gallery）。 |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | ソフトウェアとその目的の任意の説明。 |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | ソフトウェアのオプションの発行者またはベンダー。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 設定が設定されていても、入力を強制します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティ製ソフトウェアのインストールを自動的に同意し、永続フラグを設定します。 |

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
