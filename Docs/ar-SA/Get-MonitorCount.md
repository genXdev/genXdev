# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> الحصول على العدد الإجمالي لشاشات العرض المتصلة بالنظام.

## Description

* يستخدم فئة مساعدة الشاشة في Windows Presentation Foundation (WPF) لتحديد عدد شاشات العرض الفعلية المتصلة حاليًا بالنظام بدقة.
* يشمل ذلك الشاشات النشطة والتي تم اكتشافها ولكنها معطلة.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

إرجاع العدد الإجمالي للشاشات المتصلة (مثال: 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

إرجاع عدد الشاشات مع إخراج مفصل يوضح عملية الكشف.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-CpuAvx.md)
