# Confirm-InstallationConsent

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> ยืนยันความยินยอมของผู้ใช้ในการติดตั้งซอฟต์แวร์ของบริษัทอื่น โดยใช้การตั้งค่าสำหรับตัวเลือกถาวร

## Description

<details>
<summary><b>Expand description</b></summary>

ฟังก์ชันนี้ทำหน้าที่เป็นกลไก ShouldProcess ที่กำหนดเองสำหรับการติดตั้งซอฟต์แวร์โดยเฉพาะ โดยตรวจสอบค่ากำหนดของผู้ใช้เพื่อพิจารณาว่าอนุญาตให้ติดตั้งอัตโนมัติสำหรับแอปพลิเคชันที่ระบุหรือไม่ หากไม่มีการตั้งค่ากำหนด ระบบจะแจ้งให้ผู้ใช้ทราบพร้อมคำอธิบายที่ชัดเจนเกี่ยวกับสิ่งที่จะติดตั้ง แหล่งที่มา ความเสี่ยงที่อาจเกิดขึ้น และตัวเลือกในการอนุญาตหรือปฏิเสธการติดตั้ง (พร้อมตัวเลือกสำหรับการเลือกครั้งเดียวหรือแบบถาวร)

การดำเนินการนี้ช่วยให้แน่ใจว่ามีความยินยอมจากผู้ใช้อย่างชัดเจนก่อนดำเนินการติดตั้งใดๆ ซึ่งช่วยลดความเสี่ยงทางกฎหมายที่อาจเกิดขึ้นโดยกำหนดให้ผู้ใช้ดำเนินการยืนยัน ข้อความแจ้งเตือนระบุชัดเจนว่าผู้เขียนโมดูล (GenXdev) ไม่รับผิดชอบต่อซอฟต์แวร์ของบุคคลที่สาม และผู้ใช้กำลังยินยอมให้ติดตั้งโดยยอมรับความเสี่ยงเอง

ค่ากำหนดจะถูกจัดเก็บในไฟล์ JSON ทำให้ผู้ใช้สามารถตั้งค่า "อนุญาตเสมอ" สำหรับแอปพลิเคชันเฉพาะ หรือเปิดใช้งานการยินยอมโดยรวมสำหรับการติดตั้งของบุคคลที่สามทั้งหมดของ GenXdev ซึ่งสะดวกในขณะที่ยังคงความถูกต้องตามกฎหมาย

หากปฏิเสธความยินยอม (หรือตั้งค่ากำหนดเป็นปฏิเสธ) ฟังก์ชันจะส่งคืน $false และไม่ดำเนินการติดตั้ง หากอนุญาต จะส่งคืน $true

</details>
## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | ชื่อของแอปพลิเคชันหรือซอฟต์แวร์ที่กำลังติดตั้ง |
| `-Source` | String | ✅ | — | 1 | — | แหล่งที่มาของการติดตั้ง (เช่น Winget, PowerShell Gallery) |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | คำอธิบายเสริมเกี่ยวกับซอฟต์แวร์และวัตถุประสงค์ของมัน |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | ผู้เผยแพร่หรือผู้จำหน่ายซอฟต์แวร์ที่เป็นทางเลือก |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | บังคับให้แสดงข้อความแจ้งเตือนแม้ว่าจะตั้งค่าความชอบไว้แล้วก็ตาม |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | ยินยอมโดยอัตโนมัติในการติดตั้งซอฟต์แวร์ของบุคคลที่สามและตั้งค่าสถานะถาวร |

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

นี่จะตรวจสอบการยินยอมก่อนติดตั้ง Docker Desktop ผ่าน Winget

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

คำแนะนำพร้อมข้อมูลโดยละเอียดก่อนการติดตั้งโมดูล Pester

## Parameter Details

### `-ApplicationName <String>`

> ชื่อของแอปพลิเคชันหรือซอฟต์แวร์ที่กำลังติดตั้ง

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

> แหล่งที่มาของการติดตั้ง (เช่น Winget, PowerShell Gallery)

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

> คำอธิบายเสริมเกี่ยวกับซอฟต์แวร์และวัตถุประสงค์ของมัน

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

> ผู้เผยแพร่หรือผู้จำหน่ายซอฟต์แวร์ที่เป็นทางเลือก

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

> บังคับให้แสดงข้อความแจ้งเตือนแม้ว่าจะตั้งค่าความชอบไว้แล้วก็ตาม

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

> ยินยอมโดยอัตโนมัติในการติดตั้งซอฟต์แวร์ของบุคคลที่สามและตั้งค่าสถานะถาวร

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-RefactorFile.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureGenXdev.md)
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
