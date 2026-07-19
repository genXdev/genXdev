# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient les informations de fenêtre pour des processus ou des handles de fenêtre spécifiés.

## Description

* Récupère les informations sur les fenêtres à l'aide du nom du processus, de son ID ou du handle de la fenêtre.
* Renvoie des objets WindowObj contenant les détails des fenêtres principales des processus correspondants.
* Prend en charge les caractères génériques lors de la recherche par nom de processus.

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Nom du processus pour obtenir les informations de la fenêtre 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID du processus pour obtenir les informations sur la fenêtre |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Handle de fenêtre pour lequel obtenir des informations |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

Récupère les informations de fenêtre pour tous les processus nommés « bloc-notes ».

### Example 2

```powershell
Get-Window -ProcessId 1234
```

Récupère les informations de la fenêtre pour le processus avec l'ID 1234.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

Récupère les informations de la fenêtre ayant le handle 45678.

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
