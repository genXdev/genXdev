# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Hämtar namnen på tillgängliga ljudenheter för mikrofon- eller skrivbordsljudinspelning.

## Description

Räknar upp ljudenheter som kan användas med andra cmdletar som accepterar en AudioDevice-parameter. Den stöder både mikrofonanordningar och skrivbordsljudinsamlingsenheter.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Om du vill lista skrivbordsljudinspelningsenheter istället för mikrofonanordningar |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Returnerar detaljerade enhetsobjekt istället för bara namn |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Hämtar en lista över tillgängliga mikrofonenhetsnamn.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Hämtar en lista över tillgängliga namn på ljudinspelningsenheter för skrivbordet.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Hämtar detaljerade objekt som innehåller information om mikrofonienheter.

## Parameter Details

### `-UseDesktopAudioCapture`

> Om du vill lista skrivbordsljudinspelningsenheter istället för mikrofonanordningar

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

> Returnerar detaljerade enhetsobjekt istället för bara namn

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-CpuAvx.md)
