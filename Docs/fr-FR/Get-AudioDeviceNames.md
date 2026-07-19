# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Récupère les noms des périphériques audio disponibles pour la capture audio du microphone ou du bureau.

## Description

Énumère les périphériques audio qui peuvent être utilisés avec d'autres cmdlets acceptant un paramètre AudioDevice. Il prend en charge à la fois les microphones et les périphériques de capture audio du bureau.

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Whether to list desktop audio capture devices instead of microphone devices |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retourne des objets appareils détaillés au lieu de simplement des noms |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Récupère une liste des noms de périphériques micro disponibles.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Récupère une liste des noms de périphériques de capture audio disponibles.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Récupère des objets détaillés contenant des informations sur les dispositifs microphoniques.

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
