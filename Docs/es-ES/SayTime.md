# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Anuncia la hora actual usando texto a voz.

## Description

Esta función obtiene la hora actual y utiliza el motor de síntesis de voz del sistema para anunciarla verbalmente en formato de horas y minutos. Es útil para fines de accesibilidad o cuando necesitas un anuncio audible de la hora.

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
