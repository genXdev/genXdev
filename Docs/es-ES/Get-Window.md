# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene información de ventana para procesos o identificadores de ventana especificados.

## Description

* Obtiene información de ventanas utilizando el nombre del proceso, ID o identificador de ventana.
* Devuelve objetos WindowObj que contienen detalles sobre las ventanas principales de los procesos coincidentes.
* Admite comodines al buscar por nombre de proceso.

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Nombre del proceso para obtener información de la ventana 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID del proceso para obtener información de la ventana |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Identificador de ventana para obtener información |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

Recupera la información de ventanas de todos los procesos llamados "notepad".

### Example 2

```powershell
Get-Window -ProcessId 1234
```

Recupera la información de la ventana para el proceso con ID 1234.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

Recupera la información de la ventana para el identificador de ventana 45678.

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
