# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera os nomes dos dispositivos de áudio disponíveis para captura de áudio do microfone ou da área de trabalho.

## Description

Enumera dispositivos de áudio que podem ser usados com outros cmdlets que aceitam um parâmetro AudioDevice. Suporta tanto dispositivos de microfone quanto dispositivos de captura de áudio da área de trabalho.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Se deve listar dispositivos de captura de áudio da área de trabalho em vez de dispositivos de microfone |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retorna objetos de dispositivo detalhados em vez de apenas nomes |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Recupera uma lista de nomes de dispositivos de microfone disponíveis.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Recupera uma lista de nomes de dispositivos de captura de áudio disponíveis para desktop.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Recupera objetos detalhados contendo informações sobre dispositivos de microfone.

## Parameter Details

### `-UseDesktopAudioCapture`

> Se deve listar dispositivos de captura de áudio da área de trabalho em vez de dispositivos de microfone

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

> Retorna objetos de dispositivo detalhados em vez de apenas nomes

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-CpuAvx.md)
