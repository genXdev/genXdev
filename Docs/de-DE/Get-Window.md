# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft Fensterinformationen für angegebene Prozesse oder Fensterhandle ab.

## Description

* Ruft Fensterinformationen mithilfe des Prozessnamens, der Prozess-ID oder des Fensterhandles ab.
* Gibt WindowObj-Objekte zurück, die Details zu den Hauptfenstern von
  übereinstimmenden Prozessen enthalten.
* Unterstützt Platzhalter bei der Suche nach Prozessnamen.

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Name des Prozesses, um Fensterinformationen abzurufen 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID des Prozesses, für den Fensterinformationen abgerufen werden sollen |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Fenstergriff, für den Informationen abgerufen werden sollen |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

Ruft Fensterinformationen für alle Prozesse mit dem Namen "notepad" ab.

### Example 2

```powershell
Get-Window -ProcessId 1234
```

Ruft Fensterinformationen für den Prozess mit der ID 1234 ab.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

Ruft Fensterinformationen für das Fenster mit dem Handle 45678 ab.

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
