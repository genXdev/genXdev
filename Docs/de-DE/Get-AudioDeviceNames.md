# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft die Namen der verfügbaren Audiogeräte für die Mikrofon- oder Desktop-Audioaufnahme ab.

## Description

Listet Audiogeräte auf, die mit anderen Cmdlets verwendet werden können, die einen AudioDevice-Parameter akzeptieren. Es unterstützt sowohl Mikrofon- als auch Desktop-Audioaufnahmegeräte.

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Ob Desktop-Audio-Capture-Geräte anstelle von Mikrofongeräten aufgelistet werden sollen |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Returns detailed device objects instead of just names |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Ruft eine Liste der verfügbaren Mikrofon-Gerätenamen ab.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Ruft eine Liste der verfügbaren Namen von Desktop-Audioaufnahmegeräten ab.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Ruft detaillierte Objekte mit Informationen über Mikrofon-Geräte ab.

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
