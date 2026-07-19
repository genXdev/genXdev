# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> Récupère les fichiers du presse-papiers Windows qui ont été définis pour des opérations sur fichiers
comme copier/coller.

## Description

* Cette fonction récupère les chemins de fichiers du presse-papiers Windows qui ont été
  précédemment définis pour des opérations sur les fichiers.
* Elle gère automatiquement les modes de thread STA et MTA, assurant
  la compatibilité dans différents contextes d'exécution PowerShell.
* La fonction valide l'existence des fichiers et ne retourne que les fichiers/répertoires
  existants sous forme d'objets similaires à la sortie de Get-ChildItem ou Get-Item.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

Récupérer tous les fichiers actuellement dans le presse-papiers en tant qu'objets du système de fichiers.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

Obtenir les fichiers du presse-papiers et afficher leurs chemins complets.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

Obtenez uniquement les fichiers texte du presse-papiers.

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
