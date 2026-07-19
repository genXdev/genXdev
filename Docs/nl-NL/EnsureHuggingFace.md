# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat de Hugging Face CLI is geïnstalleerd en functioneel is.

## Description

Orchestreert de installatie van Python, pip en de Hugging Face CLI door EnsurePython en EnsurePip aan te roepen, en vervolgens het huggingface_hub-pakket te installeren. Slaat het CLI-pad op in een JSON-bestand en zorgt dat alle componenten beschikbaar zijn in het systeem-PATH. Retourneert $true bij succes; genereert Write-Error bij fout.

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Python versie om te garanderen |
| `-Timeout` | Int32 | — | — | Named | `600` | Timeout in seconden voor installatieprocessen |
| `-Force` | SwitchParameter | — | — | Named | — | Dwingt herinstallatie van alle componenten af |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Zorgt ervoor dat Python 3.12, pip en HuggingFace CLI zijn geïnstalleerd.

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Dwingt herinstallatie af met Python 3.11.

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

Zorgt voor installatie met een time-out van 20 minuten.

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
