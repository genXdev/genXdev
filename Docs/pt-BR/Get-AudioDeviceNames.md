# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera os nomes dos dispositivos de áudio disponíveis para captura de microfone ou áudio da área de trabalho.

## Description

Enumera dispositivos de áudio que podem ser usados com outros cmdlets que aceitam um parâmetro AudioDevice. Suporta tanto dispositivos de microfone quanto dispositivos de captura de áudio da área de trabalho.

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
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

Recupera uma lista de nomes de dispositivos de captura de áudio da área de trabalho disponíveis.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Recupera objetos detalhados contendo informações sobre dispositivos de microfone.

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
