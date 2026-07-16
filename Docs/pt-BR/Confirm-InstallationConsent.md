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
| `-ApplicationName` | String | ✅ | — | 0 | — | O nome do aplicativo ou software que está sendo instalado. |
| `-Source` | String | ✅ | — | 1 | — | A origem da instalação (ex.: Winget, PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Descrição opcional do software e seu propósito. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Editor ou fornecedor opcional do software. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force um prompt mesmo se a preferência estiver definida. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente. |

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
