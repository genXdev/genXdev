# Set-LocationParent

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `..

## Synopsis

> Change le répertoire actuel au dossier parent et affiche son contenu.

## Description

* Remonte d'un niveau dans la hiérarchie du système de fichiers.
* Affiche le contenu du nouveau répertoire courant.
* Fournit un alias pratique '..' pour une navigation rapide dans les répertoires.

## Syntax

```powershell
Set-LocationParent [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-LocationParent
```

Se déplace dans le répertoire parent et liste son contenu.

### Example 2

```powershell
..
```

Utilise l'alias pour passer au répertoire parent.

## Related Links

- [Set-LocationParent on GitHub](https://github.com/genXdev/genXdev)
