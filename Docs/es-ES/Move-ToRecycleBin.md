# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Mueve archivos y directorios a la Papelera de reciclaje de Windows de forma segura.

## Description

* Mueve archivos o directorios de forma segura a la papelera de reciclaje utilizando la API de Shell de Windows, incluso si están en uso actualmente.
* La función utiliza el objeto COM Shell.Application para realizar la operación, asegurando un comportamiento de reciclaje adecuado y capacidad de deshacer.

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Specify the path(s) to move to the recycle bin |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

Mover un solo archivo a la papelera de reciclaje.

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

Mueve varios archivos a la papelera de reciclaje usando canalizaciones y alias.

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
