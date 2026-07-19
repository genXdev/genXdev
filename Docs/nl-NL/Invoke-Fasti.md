# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> Extraheert archiefbestanden in de huidige map naar hun eigen mappen en verwijdert ze daarna.

## Description

Extraheert automatisch veelvoorkomende archiefformaten (zip, 7z, tar, enz.) in de huidige map naar individuele mappen vernoemd naar elk archief. Na succesvolle extractie worden de oorspronkelijke archiefbestanden verwijderd. Vereist dat 7-Zip op het systeem is geïnstalleerd.

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | Voer het wachtwoord in voor de versleutelde archieven |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | Recursief archieven uitpakken die in uitgepakte mappen worden gevonden |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)
