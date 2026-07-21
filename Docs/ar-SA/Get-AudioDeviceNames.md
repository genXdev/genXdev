# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> استرداد أسماء أجهزة الصوت المتاحة لالتقاط الميكروفون أو صوت سطح المكتب.

## Description

يقوم بتعداد أجهزة الصوت التي يمكن استخدامها مع أوامر cmdlets الأخرى التي تقبل معلمة AudioDevice. وهو يدعم كل من أجهزة الميكروفون وأجهزة التقاط صوت سطح المكتب.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | ما إذا كان سيتم عرض أجهزة التقاط الصوت لسطح المكتب بدلاً من أجهزة الميكروفون |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | إرجاع كائنات جهاز مفصلة بدلاً من الأسماء فقط |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

يسترجع قائمة بأسماء أجهزة الميكروفون المتاحة.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

استرداد قائمة بأسماء أجهزة التقاط الصوت المكتبية المتاحة.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

يسترجع كائنات مفصلة تحتوي على معلومات حول أجهزة الميكروفون.

## Parameter Details

### `-UseDesktopAudioCapture`

> ما إذا كان سيتم عرض أجهزة التقاط الصوت لسطح المكتب بدلاً من أجهزة الميكروفون

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Passthru`

> إرجاع كائنات جهاز مفصلة بدلاً من الأسماء فقط

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-CpuAvx.md)
