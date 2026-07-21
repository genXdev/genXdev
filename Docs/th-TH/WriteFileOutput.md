# WriteFileOutput

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> แสดงข้อมูลไฟล์พร้อมชื่อที่แสดงแบบมีไฮเปอร์ลิงก์เพื่อประสบการณ์ผู้ใช้ที่ดีขึ้น

## Description

ฟังก์ชันนี้ประมวลผลออบเจ็กต์อินพุตไฟล์และส่งออกในรูปแบบที่เป็นมิตรต่อผู้ใช้
พร้อมชื่อไฟล์ที่เชื่อมโยงเป็นไฮเปอร์ลิงก์เมื่อแสดงในคอนโซล จัดการ
ประเภทอินพุตที่แตกต่างกันรวมถึงสตริง ออบเจ็กต์ FileInfo และประเภทออบเจ็กต์อื่นๆ
ฟังก์ชันจะตรวจจับโดยอัตโนมัติว่าเอาต์พุตถูกเปลี่ยนเส้นทางหรือ
ถูกจับในไปป์ไลน์และปรับพฤติกรรมตามนั้น

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | ข้อมูลการเรียกใช้จากฟังก์ชันที่ทำการเรียก |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | วัตถุอินพุตที่ต้องประมวลผล ซึ่งอาจเป็นเส้นทางไฟล์หรือวัตถุ |
| `-Prefix` | String | — | — | Named | — | คำนำหน้าสตริงที่ไม่บังคับที่จะเพิ่มเข้าไปในเอาต์พุตที่แสดงเพื่อบริบทเพิ่มเติม |
| `-RelativeBasePath` | String | — | — | Named | — | เส้นทางฐานสำหรับสร้างเส้นทางไฟล์สัมพัทธ์ในเอาต์พุต |
| `-FullPaths` | SwitchParameter | — | — | Named | — | บังคับให้เอาต์พุตใช้พาธแบบเต็มสัมบูรณ์แทนพาธแบบสัมพัทธ์ |

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Parameter Details

### `-CallerInvocation <Object>`

> ข้อมูลการเรียกใช้จากฟังก์ชันที่ทำการเรียก

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Input <Object>`

> วัตถุอินพุตที่ต้องประมวลผล ซึ่งอาจเป็นเส้นทางไฟล์หรือวัตถุ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prefix <String>`

> คำนำหน้าสตริงที่ไม่บังคับที่จะเพิ่มเข้าไปในเอาต์พุตที่แสดงเพื่อบริบทเพิ่มเติม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RelativeBasePath <String>`

> เส้นทางฐานสำหรับสร้างเส้นทางไฟล์สัมพัทธ์ในเอาต์พุต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullPaths`

> บังคับให้เอาต์พุตใช้พาธแบบเต็มสัมบูรณ์แทนพาธแบบสัมพัทธ์

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
