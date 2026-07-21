# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> ตรวจสอบให้แน่ใจว่าโมดูล GenXdev ทั้งหมดถูกโหลดอย่างถูกต้องโดยเรียกใช้ cmdlets Ensure* ทั้งหมด

## Description

ฟังก์ชันนี้ดึง cmdlet ทั้งหมดของ GenXdev ที่ขึ้นต้นด้วย "Ensure" หรือ "Optimize-Ensure" (สำหรับ cmdlet ที่เป็น C#) และดำเนินการแต่ละรายการเพื่อรับประกันว่าโมดูล GenXdev ทั้งหมดที่จำเป็นและการขึ้นต่อกันต่างๆ ได้ถูกโหลดและพร้อมใช้งานอย่างถูกต้อง ความล้มเหลวใดๆ ที่เกิดขึ้นระหว่างการดำเนินการจะถูกจับและแสดงเป็นข้อความแจ้งข้อมูล

นอกจากนี้ ยังสามารถดาวน์โหลดและโหลดแพ็กเกจ NuGet ทั้งหมดที่กำหนดไว้ในไฟล์ manifest packages.json ได้อีกด้วย

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | บังคับให้ดำเนินการตรวจสอบให้แน่ใจว่าเสร็จสมบูรณ์ แม้ว่าจะดูเหมือนว่าดำเนินการเสร็จแล้วก็ตาม |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | ดาวน์โหลดและโหลดแพ็คเกจ NuGet ทั้งหมดที่กำหนดในไฟล์ manifest packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | บังคับให้แสดงพร้อมท์ยินยอมแม้จะมีการตั้งค่ากำหนดไว้สำหรับการติดตั้งซอฟต์แวร์ของบุคคลที่สาม |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | ยินยอมให้ติดตั้งซอฟต์แวร์ของบริษัทอื่นโดยอัตโนมัติและตั้งค่าแฟล็กถาวรสำหรับแพ็คเกจทั้งหมด |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

คำสั่งนี้จะรัน cmdlet Ensure* ทั้งหมดที่พร้อมใช้งานเพื่อเริ่มต้นสภาพแวดล้อม GenXdev

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

คำสั่งนี้ทำงาน cmdlet Ensure* ทั้งหมด และยังดาวน์โหลดและโหลดแพ็กเกจ NuGet ทั้งหมดที่กำหนดในไฟล์ manifest packages.json

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

คำสั่งนี้จะรัน cmdlet Ensure* ทั้งหมดและดาวน์โหลดแพ็กเกจ NuGet.

## Parameter Details

### `-Force`

> บังคับให้ดำเนินการตรวจสอบให้แน่ใจว่าเสร็จสมบูรณ์ แม้ว่าจะดูเหมือนว่าดำเนินการเสร็จแล้วก็ตาม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DownloadAllNugetPackages`

> ดาวน์โหลดและโหลดแพ็คเกจ NuGet ทั้งหมดที่กำหนดในไฟล์ manifest packages.json

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> บังคับให้แสดงพร้อมท์ยินยอมแม้จะมีการตั้งค่ากำหนดไว้สำหรับการติดตั้งซอฟต์แวร์ของบุคคลที่สาม

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

> ยินยอมให้ติดตั้งซอฟต์แวร์ของบริษัทอื่นโดยอัตโนมัติและตั้งค่าแฟล็กถาวรสำหรับแพ็คเกจทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-IdenticalParamValues.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/WriteFileOutput.md)
