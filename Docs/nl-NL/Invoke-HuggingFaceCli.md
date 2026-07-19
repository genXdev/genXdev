# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Roept de Hugging Face CLI aan met de opgegeven argumenten.

## Description

Zorgt dat EnsureHuggingFace ervoor zorgt dat de CLI is geïnstalleerd en voert vervolgens de Hugging Face CLI uit met de opgegeven argumenten. Leest het CLI-pad uit $ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json. Geeft de uitvoer van het commando terug als een string; genereert een Write-Error bij mislukking.

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | De argumenten om door te geven aan de Hugging Face CLI |
| `-Timeout` | Int32 | — | — | 1 | `36000` | Time-out in seconden voor CLI-uitvoering en afhankelijkheidsinstallatie |
| `-Force` | SwitchParameter | — | — | Named | — | Dwingt herinstallatie van de Hugging Face CLI af |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

Roept de CLI aan met het "login"-commando, waarbij herinstallatie wordt afgedwongen.

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

Roept de CLI aan met het "whoami"-commando en een time-out van 300 seconden.

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
