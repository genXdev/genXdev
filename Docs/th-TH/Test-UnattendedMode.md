# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ตรวจจับว่า PowerShell กำลังทำงานในโหมดอัตโนมัติ/ไม่มีผู้ใช้หรือไม่

## Description

* วิเคราะห์ตัวบ่งชี้ต่างๆ เพื่อตรวจสอบว่า PowerShell กำลังทำงานในบริบทที่ไม่มีการดูแลหรืออัตโนมัติ
* ตรวจสอบการวิเคราะห์ไปป์ไลน์ ตัวแปรสภาพแวดล้อม การเปลี่ยนเส้นทางคอนโซล และบริบทการเรียกใช้
* เมื่อมีการระบุ CallersInvocation จะวิเคราะห์ตำแหน่งและจำนวนไปป์ไลน์เพื่อตรวจจับการทำงานของไปป์ไลน์หรือสคริปต์อัตโนมัติ

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | ข้อมูลการเรียกของผู้เรียกสำหรับการตรวจจับไปป์ไลน์และระบบอัตโนมัติ |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | ส่งกลับวัตถุการวิเคราะห์โดยละเอียดแทนที่จะเป็นค่าบูลีนแบบง่าย |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

ส่งคืนค่าบูลีนที่ระบุว่ากำลังทำงานในโหมดไม่ต้องใส่ข้อมูลหรือไม่

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

วิเคราะห์บริบทการเรียกของผู้เรียกและส่งคืนค่าบูลีน

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

ส่งคืนวัตถุการวิเคราะห์โดยละเอียดพร้อมตัวบ่งชี้ทั้งหมด

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

ตัวอย่างการใช้งานในฟังก์ชันเพื่อตรวจสอบโหมด unattended

## Parameter Details

### `-CallersInvocation <InvocationInfo>`

> ข้อมูลการเรียกของผู้เรียกสำหรับการตรวจจับไปป์ไลน์และระบบอัตโนมัติ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Detailed`

> ส่งกลับวัตถุการวิเคราะห์โดยละเอียดแทนที่จะเป็นค่าบูลีนแบบง่าย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


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
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/WriteFileOutput.md)
