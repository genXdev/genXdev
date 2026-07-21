# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Sisteme bağlı olan ekran monitörlerinin toplam sayısını alır.

## Description

* Sistemde şu anda bağlı olan fiziksel ekran monitörlerinin sayısını doğru bir şekilde belirlemek için Windows Presentation Foundation (WPF) Screen yardımcı sınıfını kullanır.
* Bu, hem etkin hem de algılanan ancak devre dışı bırakılmış monitörleri içerir.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Bağlı monitörlerin toplam sayısını döndürür (ör. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Algılama sürecini gösteren ayrıntılı çıktı ile monitör sayısını döndürür.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-CpuAvx.md)
