# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Gibt die aktuelle Uhrzeit mithilfe von Text-to-Speech aus.

## Description

Diese Funktion ruft die aktuelle Uhrzeit ab und nutzt die Text-zu-Sprache-Engine des Systems, um sie im Format Stunden und Minuten verbal auszugeben. Dies ist nützlich für Barrierefreiheitszwecke oder wenn Sie eine hörbare Zeitansage benötigen.

## Syntax

```powershell
SayTime [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Wait` | SwitchParameter | — | — | Named | — | The `-Wait` parameter. |

## Examples

### SayTime Speaks the current time, e.g. "The time is 14 hours and 30 minutes"

```powershell
SayTime
Speaks the current time, e.g. "The time is 14 hours and 30 minutes"
```

## Related Links

- [SayTime on GitHub](https://github.com/genXdev/genXdev)
