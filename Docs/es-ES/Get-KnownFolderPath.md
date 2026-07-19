# Get-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `folder

## Synopsis

> Obtiene la ruta de una carpeta conocida de Windows utilizando la API de Windows Shell32.

## Description

Recupera la ruta de una carpeta conocida de Windows especificada utilizando la función SHGetKnownFolderPath de la API de Shell32. Este método es más fiable que usar variables de entorno, ya que funciona de manera consistente en diferentes versiones de Windows y configuraciones de idioma. Admite todas las carpetas conocidas estándar de Windows como Documentos, Descargas, AppData, etc.

## Syntax

```powershell
Get-KnownFolderPath -KnownFolder <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | El nombre de la carpeta conocida de Windows para obtener la ruta |

## Examples

### Get-KnownFolderPath -KnownFolder 'Documents' Returns: C:\Users\Username\Documents

```powershell
Get-KnownFolderPath -KnownFolder 'Documents'
Returns: C:\Users\Username\Documents
```

### folder Downloads Returns: C:\Users\Username\Downloads using the alias

```powershell
folder Downloads
Returns: C:\Users\Username\Downloads using the alias
```

### cd (folder Desktop) Changes to the Desktop folder using the alias

```powershell
cd (folder Desktop)
Changes to the Desktop folder using the alias
```

## Related Links

- [Get-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
