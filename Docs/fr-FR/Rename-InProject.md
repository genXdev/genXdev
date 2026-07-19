# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> Exécute le remplacement de texte dans tout un répertoire de projet.

## Description

Recherche récursivement dans les fichiers et répertoires d'un projet pour effectuer des remplacements de texte. Gère à la fois les noms de fichiers/répertoires et le contenu des fichiers. Ignore les fichiers binaires courants et les dossiers de dépôt (.git, .svn) pour éviter toute corruption. Utilise l'encodage UTF-8 sans BOM pour les opérations sur les fichiers. Prend en charge les modes de remplacement sensibles à la casse et insensibles à la casse.

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | Le répertoire, le chemin d'accès, ou le répertoire+masque de recherche |
| `-FindText` | String | ✅ | — | 1 | — | Le texte à rechercher (la sensibilité à la casse est contrôlée par le paramètre CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | Le texte à remplacer correspond à |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Case-insensitive text replacement |

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
