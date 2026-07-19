# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt vensterinformatie op voor opgegeven processen of vensterhandles.

## Description

* Haalt vensterinformatie op via procesnaam, proces-ID of vensterhandle.
* Geeft WindowObj-objecten terug met details over de hoofdvensters van overeenkomende processen.
* Ondersteunt jokertekens bij het zoeken op procesnaam.

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Naam van het proces om vensterinformatie voor op te halen 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID van het proces om vensterinformatie voor te verkrijgen |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Vensterhandgreep om informatie voor op te halen |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

Haalt vensterinformatie op voor alle processen met de naam 'notepad'.

### Example 2

```powershell
Get-Window -ProcessId 1234
```

Haalt vensterinformatie op voor het proces met ID 1234.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

Haalt vensterinformatie op voor het venster met handle 45678.

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
