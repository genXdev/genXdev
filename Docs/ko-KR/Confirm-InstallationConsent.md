# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 타사 소프트웨어 설치에 대한 사용자 동의를 확인하고, 지속적인 선택을 위해 설정을 사용합니다.

## Description

<details>
<summary><b>Expand description</b></summary>

이 함수는 소프트웨어 설치를 위한 사용자 정의 ShouldProcess 메커니즘 역할을 합니다. 지정된 애플리케이션에 대해 자동 설치가 허용되는지 확인하기 위해 사용자 기본 설정을 확인합니다. 기본 설정이 없으면 설치될 내용, 출처, 잠재적 위험, 설치 허용 또는 거부 옵션(일회성 또는 영구적 선택 가능)을 명확히 설명하는 프롬프트를 사용자에게 표시합니다.

이를 통해 설치를 진행하기 전에 명시적인 사용자 동의를 보장하여, 사용자의 적극적인 조치를 요구함으로써 잠재적인 법적 위험을 완화합니다. 프롬프트는 모듈 작성자(GenXdev)가 타사 소프트웨어에 대해 책임을 지지 않으며, 사용자가 자신의 책임 하에 설치에 동의한다는 점을 명확히 밝힙니다.

기본 설정은 JSON 파일에 저장되며, 사용자는 특정 애플리케이션에 대해 '항상 허용'을 설정하거나 모든 GenXdev 타사 설치에 대한 전역 동의를 활성화할 수 있어 편리하면서도 법적으로 타당합니다.

동의가 거부되거나(또는 기본 설정이 거부로 설정된 경우) 함수는 $false를 반환하고 설치를 진행하지 않습니다. 허용되면 $true를 반환합니다.

</details>
## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | 설치 중인 애플리케이션 또는 소프트웨어의 이름입니다. |
| `-Source` | String | ✅ | — | 1 | — | 설치 출처 (예: Winget, PowerShell 갤러리) |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | 소프트웨어와 그 목적에 대한 선택적 설명. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | 소프트웨어의 선택적 게시자 또는 공급업체입니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 설정이 있어도 프롬프트를 강제로 실행합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 자동으로 타사 소프트웨어 설치에 동의하고 영구 플래그를 설정합니다. |

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

이것은 Winget을 통해 Docker Desktop을 설치하기 전에 동의를 확인합니다.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Pester 모듈을 설치하기 전에 자세한 정보를 제공하는 프롬프트입니다.

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
