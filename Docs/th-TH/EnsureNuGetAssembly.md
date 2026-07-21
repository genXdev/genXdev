# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> ดาวน์โหลดและโหลดแอสเซมบลี .NET จากแพ็กเกจ NuGet โดยอิงตามคีย์หรือ ID ของแพ็กเกจ

## Description

ฟังก์ชันนี้รับประกันว่าแอสเซมบลีแพ็กเกจ NuGet ที่ระบุถูกดาวน์โหลด
และโหลดเข้าสู่เซสชัน PowerShell ปัจจุบัน รองรับการตรวจจับอัตโนมัติ
และการโหลดโดยมี fallback เป็นไฟล์ JSON manifest สำหรับการแทนที่การกำหนดค่า
จัดการกรณีขอบเช่น stub dependencies (เช่น SQLite) การติดตั้งใช้
dotnet CLI เท่านั้นเพื่อการจัดการแพ็กเกจที่เชื่อถือได้และโหลดแอสเซมบลี
โดยตรงจากแคช NuGet ทั่วโลกโดยไม่ต้องคัดลอก การโหลดแบบขี้เกียจจะตรวจสอบว่า
ประเภทมีอยู่แล้วก่อนดำเนินการ

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | คีย์แพ็กเกจจาก packages.json หรือ NuGet PackageId โดยตรง |
| `-ManifestPath` | String | — | — | Named | — | เส้นทางไปยัง packages.json; ค่าเริ่มต้นคือรากของโมดูลหากไม่ได้ระบุ. |
| `-Version` | String | — | — | Named | — | รุ่นเฉพาะ; หากไม่ระบุ ให้ใช้รุ่นสูงสุดจาก JSON หรือรุ่นล่าสุด |
| `-TypeName` | String | — | — | Named | — | TypeName เพื่อยืนยันการโหลด |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | สำรองไปใช้เวอร์ชันล่าสุดหากเวอร์ชันที่ระบุล้มเหลว |
| `-Destination` | String | — | — | Named | — | ตำแหน่งที่ติดตั้งแบบกำหนดเอง; ค่าเริ่มต้นคือแคชเฉพาะที่แบบถาวรหรือแคชส่วนกลาง |
| `-Description` | String | — | — | Named | — | คำอธิบายเพิ่มเติมเกี่ยวกับซอฟต์แวร์และวัตถุประสงค์ในการขอความยินยอม |
| `-Publisher` | String | — | — | Named | — | ผู้เผยแพร่หรือผู้ขายซอฟต์แวร์สำหรับการยินยอม (ไม่บังคับ) |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | บังคับให้แสดงข้อความยืนยันแม้ว่าจะตั้งค่าการตั้งค่าให้ยินยอมแล้วก็ตาม |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | ยินยอมโดยอัตโนมัติในการติดตั้งซอฟต์แวร์ของบุคคลที่สามและตั้งค่าสถานะถาวร |

## Examples

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-PackageKey <String>`

> คีย์แพ็กเกจจาก packages.json หรือ NuGet PackageId โดยตรง

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ManifestPath <String>`

> เส้นทางไปยัง packages.json; ค่าเริ่มต้นคือรากของโมดูลหากไม่ได้ระบุ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Version <String>`

> รุ่นเฉพาะ; หากไม่ระบุ ให้ใช้รุ่นสูงสุดจาก JSON หรือรุ่นล่าสุด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TypeName <String>`

> TypeName เพื่อยืนยันการโหลด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceLatest`

> สำรองไปใช้เวอร์ชันล่าสุดหากเวอร์ชันที่ระบุล้มเหลว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Destination <String>`

> ตำแหน่งที่ติดตั้งแบบกำหนดเอง; ค่าเริ่มต้นคือแคชเฉพาะที่แบบถาวรหรือแคชส่วนกลาง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> คำอธิบายเพิ่มเติมเกี่ยวกับซอฟต์แวร์และวัตถุประสงค์ในการขอความยินยอม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Publisher <String>`

> ผู้เผยแพร่หรือผู้ขายซอฟต์แวร์สำหรับการยินยอม (ไม่บังคับ)

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

> บังคับให้แสดงข้อความยืนยันแม้ว่าจะตั้งค่าการตั้งค่าให้ยินยอมแล้วก็ตาม

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
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureGenXdev.md)
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
