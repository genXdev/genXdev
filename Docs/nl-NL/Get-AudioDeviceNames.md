# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt de namen op van beschikbare audioapparaten voor microfoon- of bureaubladgeluidopname.

## Description

Sommeert audioapparaten op die kunnen worden gebruikt met andere cmdlets die een AudioDevice-parameter accepteren. Het ondersteunt zowel microfoonapparaten als desktopaudiocapture-apparaten.

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Of desktop audio capture devices in plaats van microfoonapparaten weergeven |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retourneert gedetailleerde apparaatobjecten in plaats van alleen namen |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Haalt een lijst met beschikbare microfoonapparaatnamen op.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Haalt een lijst op met namen van beschikbare desktop audio-opnameapparaten.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Haalt gedetailleerde objecten op met informatie over microfoonapparaten.

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
