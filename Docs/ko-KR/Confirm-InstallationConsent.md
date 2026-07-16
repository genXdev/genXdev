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
| `-ApplicationName` | String | ✅ | — | 0 | — | 설치 중인 애플리케이션 또는 소프트웨어의 이름입니다. |
| `-Source` | String | ✅ | — | 1 | — | 설치 출처 (예: Winget, PowerShell 갤러리) |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | 소프트웨어와 그 목적에 대한 선택적 설명. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | 소프트웨어의 선택적 게시자 또는 공급업체입니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 설정이 있어도 프롬프트를 강제로 실행합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 자동으로 타사 소프트웨어 설치에 동의하고 영구 플래그를 설정합니다. |

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
