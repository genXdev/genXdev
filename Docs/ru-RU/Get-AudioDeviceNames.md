# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает названия доступных аудиоустройств для захвата звука с микрофона или рабочего стола.

## Description

Перечисляет аудиоустройства, которые можно использовать с другими командлетами, принимающими параметр AudioDevice. Поддерживаются как микрофонные устройства, так и устройства захвата аудио с рабочего стола.

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Whether to list desktop audio capture devices instead of microphone devices |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Возвращает подробные объекты устройств вместо просто имен |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Возвращает список доступных имен микрофонных устройств.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Получает список доступных имен устройств захвата звука рабочего стола.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Извлекает подробные объекты, содержащие информацию об устройствах микрофонов.

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
