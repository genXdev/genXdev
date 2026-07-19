# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> Realiza reemplazo de texto en todo un directorio de proyecto.

## Description

Busca de forma recursiva a través de archivos y directorios en un proyecto para realizar reemplazos de texto. Maneja tanto nombres de archivos/directorios como contenidos de archivos. Omite archivos binarios comunes y carpetas de repositorio (.git, .svn) para evitar daños. Utiliza codificación UTF-8 sin BOM para operaciones con archivos. Soporta modos de reemplazo que distinguen entre mayúsculas y minúsculas y que no lo hacen.

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | El directorio, la ruta de archivo, o directorio+máscara de búsqueda |
| `-FindText` | String | ✅ | — | 1 | — | El texto a buscar (el control de mayúsculas y minúsculas se determina mediante el parámetro CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | El texto para reemplazar coincide con |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
