# Confirm-InstallationConsent

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> يؤكد موافقة المستخدم على تثبيت برامج الطرف الثالث، باستخدام التفضيلات للخيارات المستمرة.

## Description

<details>
<summary><b>Expand description</b></summary>

تعمل هذه الوظيفة كآلية مخصصة لـ ShouldProcess خاصة بتثبيتات البرامج. تتحقق من تفضيل المستخدم لتحديد ما إذا كان التثبيت التلقائي مسموحًا للتطبيق المحدد. إذا لم يتم تعيين تفضيل، فإنها تطلب من المستخدم توضيحًا واضحًا لما سيتم تثبيته والمصدر والمخاطر المحتملة وخيارات السماح أو رفض التثبيت (مع خيارات للاختيار لمرة واحدة أو اختيارات دائمة).

يضمن ذلك موافقة المستخدم الصريحة قبل المتابعة في أي تثبيت، مما يساعد في تخفيف المخاطر القانونية المحتملة من خلال طلب إجراء إيجابي من المستخدم. يوضح الطلب أن مؤلف الوحدة (GenXdev) ليس مسؤولاً عن برامج الطرف الثالث، وأن المستخدم يوافق على التثبيت على مسؤوليته الخاصة.

يتم تخزين التفضيلات في ملف JSON، مما يسمح للمستخدمين بتعيين "السماح دائمًا" لتطبيقات محددة أو تمكين الموافقة العامة لجميع تثبيتات الطرف الثالث من GenXdev، مما يجعله مناسبًا مع بقائه سليمًا قانونيًا.

إذا تم رفض الموافقة (أو تم تعيين التفضيل على الرفض)، ترجع الدالة القيمة $false ولا تستمر في التثبيت. إذا تم السماح، ترجع القيمة $true.

</details>
## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | اسم التطبيق أو البرنامج الذي يتم تثبيته. |
| `-Source` | String | ✅ | — | 1 | — | مصدر التثبيت (مثل: Winget، PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | وصف اختياري للبرنامج والغرض منه. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | الناشر أو البائع الاختياري للبرنامج. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | فرض الإدخال حتى إذا تم تعيين التفضيل. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | الموافقة تلقائيًا على تثبيت البرامج من طرف ثالث وتعيين علامة الاستمرارية. |

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

يتحقق هذا من الموافقة قبل تثبيت Docker Desktop عبر Winget.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

مطالبات تحتوي على معلومات تفصيلية قبل تثبيت وحدة Pester.

## Parameter Details

### `-ApplicationName <String>`

> اسم التطبيق أو البرنامج الذي يتم تثبيته.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Source <String>`

> مصدر التثبيت (مثل: Winget، PowerShell Gallery).

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> وصف اختياري للبرنامج والغرض منه.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"This software is required for certain features in the GenXdev modules."` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Publisher <String>`

> الناشر أو البائع الاختياري للبرنامج.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"Third-party vendor"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> فرض الإدخال حتى إذا تم تعيين التفضيل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> الموافقة تلقائيًا على تثبيت البرامج من طرف ثالث وتعيين علامة الاستمرارية.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Boolean`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-RefactorFile.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/WriteFileOutput.md)
