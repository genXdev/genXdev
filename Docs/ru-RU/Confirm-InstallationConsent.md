# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Подтверждает согласие пользователя на установку стороннего программного обеспечения, используя настройки для постоянного выбора.

## Description

<details>
<summary><b>Expand description</b></summary>

Эта функция действует как пользовательский механизм ShouldProcess для
установки программного обеспечения. Она проверяет предпочтения пользователя, чтобы определить,
разрешена ли автоматическая установка для указанного приложения. Если предпочтение
не установлено, она запрашивает у пользователя четкое объяснение того, что будет
установлено, источник, потенциальные риски и варианты разрешить или запретить
установку (с вариантами одноразового или постоянного выбора).

Это обеспечивает явное согласие пользователя перед выполнением любой установки,
помогая снизить потенциальные юридические риски, требуя от пользователя активных действий.
Запрос четко указывает, что автор модуля (GenXdev) не несет ответственности за стороннее
программное обеспечение и что пользователь дает согласие на установку на свой страх и риск.

Настройки хранятся в файле JSON, что позволяет пользователям устанавливать параметр "всегда
разрешать" для конкретных приложений или включить глобальное согласие на все сторонние
установки GenXdev, что удобно и юридически обосновано.

Если согласие не получено (или предпочтение установлено на запрет), функция возвращает $false и не
выполняет установку. Если разрешено, возвращается $true.

</details>
## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | Название приложения или программного обеспечения, которое устанавливается. |
| `-Source` | String | ✅ | — | 1 | — | Источник установки (например, Winget, PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Описание программного обеспечения и его назначение (опционально). |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Необязательный издатель или поставщик программного обеспечения. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a prompt even if preference is set. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего ПО и устанавливать постоянный флаг. |

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

Это проверяет согласие перед установкой Docker Desktop через Winget.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Перед установкой модуля Pester ознакомьтесь с подробной информацией.

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
