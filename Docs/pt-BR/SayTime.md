# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Anuncia a hora atual usando texto para fala.

## Description

Esta função obtém a hora atual e usa o motor de texto para fala do sistema para anunciá-la verbalmente no formato de horas e minutos. É útil para fins de acessibilidade ou quando você precisa de um anúncio audível da hora.

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
