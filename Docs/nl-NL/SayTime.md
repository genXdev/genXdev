# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Kondigt de huidige tijd aan met behulp van tekst-naar-spraak.

## Description

Deze functie haalt de huidige tijd op en gebruikt het tekst-naar-spraak systeem om deze in uren en minuten formaat verbaal aan te kondigen. Het is nuttig voor toegankelijkheidsdoeleinden of wanneer je een hoorbare tijdsaankondiging nodig hebt.

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
