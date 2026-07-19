# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> サードパーティ製ソフトウェアのインストールに関するユーザーの同意を確認し、永続的な選択のために設定を使用します。

## Description

<details>
<summary><b>Expand description</b></summary>

この関数は、ソフトウェアインストール専用のカスタムShouldProcessメカニズムとして機能します。指定されたアプリケーションに対して自動インストールが許可されているかどうかをユーザー設定から確認します。設定がない場合は、何がインストールされるのか、そのソース、潜在的なリスク、インストールを許可または拒否するオプション（1回限りまたは永続的な選択肢を含む）を明確に説明するプロンプトをユーザーに表示します。

これにより、インストールを進める前に明示的なユーザーの同意が確保され、ユーザーからの積極的な行動を要求することで潜在的な法的リスクを軽減します。プロンプトでは、モジュール作成者（GenXdev）はサードパーティソフトウェアについて責任を負わず、ユーザーが自己責任でインストールに同意していることを明確に述べます。

設定はJSONファイルに保存され、ユーザーは特定のアプリケーションに対して「常に許可」を設定したり、すべてのGenXdevサードパーティインストールに対してグローバルな同意を有効にしたりできるため、法的に問題なく便利に使用できます。

同意が拒否された場合（または設定が拒否になっている場合）、関数は$falseを返し、インストールを実行しません。許可された場合は$trueを返します。

</details>
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

## Examples

### if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `         -Source "Winget") {     # Proceed with installation     Microsoft.WinGet.Client\Install-WinGetPackage `         -Id "Docker.DockerDesktop" }

```powershell
if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `
        -Source "Winget") {
    # Proceed with installation
    Microsoft.WinGet.Client\Install-WinGetPackage `
        -Id "Docker.DockerDesktop"
}
```

これは、Winget 経由で Docker Desktop をインストールする前に同意を確認します。

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Pester モジュールをインストールする前に、詳細情報を提供するプロンプト。

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
