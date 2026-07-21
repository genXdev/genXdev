# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Fournit un wrapper PowerShell pour l'utilitaire de copie robuste (RoboCopy) de Microsoft.

## Description

Un wrapper complet pour l'utilitaire en ligne de commande RoboCopy qui offre des capacités robustes de copie de fichiers et de répertoires. Cette fonction expose l'ensemble étendu des fonctionnalités de RoboCopy via des paramètres conviviaux pour PowerShell tout en conservant la plupart de ses puissantes fonctionnalités.

Principales fonctionnalités :
- Synchronisation de répertoires avec options miroir
- Prise en charge des chemins très longs (>256 caractères)
- Préservation des paramètres de sécurité
- Gestion avancée des attributs de fichiers
- Gestion des liens symboliques et des points de jonction
- Mode de surveillance pour une synchronisation continue
- Optimisation des performances pour les gros fichiers
- Prise en charge de la compression réseau
- Mode de récupération pour les périphériques défaillants

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Le répertoire, le chemin de fichier, ou le répertoire+masque de recherche |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Le répertoire de destination où placer les fichiers et répertoires copiés.
            Si ce répertoire n'existe pas encore, tous les répertoires manquants seront créés.
            Valeur par défaut = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Masque de recherche facultatif pour sélectionner les fichiers à copier.
            Valeur par défaut = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synchronise le contenu des répertoires spécifiés, supprime également tous les fichiers et répertoires de destination qui n'existent pas dans la source |
| `-Move` | SwitchParameter | — | — | Named | — | Déplacera au lieu de copier tous les fichiers de la source vers la destination |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Copiera également la propriété, les descripteurs de sécurité et les informations d'audit des fichiers et répertoires |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copie uniquement les fichiers de la source et ignore les sous-dossiers (pas de récursion) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Ne copie pas les répertoires s'ils seraient vides *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Créer uniquement l'arborescence des répertoires *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Créer l'arborescence des répertoires et des fichiers de taille zéro uniquement |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Ne pas copier les liens symboliques, les jonctions ou le contenu qu'ils pointent |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Ne copiez pas les liens symboliques de fichiers mais suivez les jonctions de répertoires |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Au lieu de copier le contenu vers lequel pointent les liens symboliques, copiez les liens eux-mêmes. |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Ne copiez pas les points de jonction de répertoires (lien symbolique pour un dossier) ni le contenu vers lequel ils pointent *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Au lieu de copier le contenu vers lequel pointent les jonctions, copier les jonctions elles-mêmes *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Va copier tous les fichiers même s'ils sont plus anciens que ceux dans la destination |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Copie uniquement les fichiers qui ont l'attribut d'archive défini |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | En plus de copier uniquement les fichiers qui ont l'attribut d'archive activé, va ensuite réinitialiser cet attribut sur la source |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Exclure tous les fichiers qui correspondent à l'un de ces noms/chemins/wildcards 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Exclure tous les répertoires qui correspondent à l'un de ces noms/chemins/expressions génériques *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Copier uniquement les fichiers qui possèdent tous ces attributs définis [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Exclure les fichiers qui possèdent l'un de ces attributs [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Définira les attributs donnés aux fichiers copiés [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Supprimera les attributs donnés des fichiers copiés [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Copier uniquement les n premiers niveaux de l'arborescence du répertoire source *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Ignorer les fichiers dont la taille est inférieure à n octets |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Ignorer les fichiers dont la taille dépasse n octets |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Ignorer les fichiers qui ne sont pas au moins : n jours anciens OU créés avant la date n (si n < 1900 alors n = n jours, sinon n = date AAAAMMJJ) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Ignorer les fichiers plus anciens que : n jours OU créés après n date (si n < 1900 alors n = n jours, sinon n = date AAAAMMJJ) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Ignorer les fichiers qui ont été consultés au cours des : n derniers jours OU avant la date n (si n < 1900, alors n = n jours, sinon n = date AAAAMMJJ) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Ignorer les fichiers qui n'ont pas été consultés depuis : n jours OU après n date (si n < 1900 alors n = n jours, sinon n = date AAAAMMJJ) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Fera une brève pause et réessayera en cas d'erreurs d'E/S lors de la copie |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Restera actif après la copie, et copiera les modifications supplémentaires après un seuil par défaut de 10 minutes |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Relancer dans n minutes, si modifié |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Exécuter à nouveau lorsque plus de n changements sont observés |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Heures d'exécution - moments auxquels de nouvelles copies peuvent être démarrées, heure de début, plage 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Heures d'exécution - moments où de nouvelles copies peuvent être démarrées, heure de fin, plage 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Si spécifié, la journalisation sera également effectuée dans le fichier spécifié |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Ne pas ajouter au fichier journal spécifié, mais écraser à la place |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Inclure tous les noms de répertoires analysés dans la sortie |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Inclure tous les noms de fichiers analysés dans la sortie, même ceux ignorés |
| `-Unicode` | SwitchParameter | — | — | Named | — | Afficher l'état en UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Active l'optimisation pour la copie de fichiers volumineux |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimisez les performances en effectuant une copie multithreadée |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Si possible, utilisez la compression lors de la copie de fichiers entre serveurs pour économiser de la bande passante et du temps. |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Lorsqu'elle est définie, utilise la correspondance de timestamp en millisecondes au lieu de la tolérance par défaut de 2 secondes |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Remplace, supprime ou ajoute un paramètre robocopy spécifié.

Utilisation :

Ajouter ou remplacer un paramètre :

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Supprimer un paramètre :

    -Override -/Switch

Plusieurs remplacements :

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> Le répertoire, le chemin de fichier, ou le répertoire+masque de recherche

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> Le répertoire de destination où placer les fichiers et répertoires copiés.
            Si ce répertoire n'existe pas encore, tous les répertoires manquants seront créés.
            Valeur par défaut = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Masque de recherche facultatif pour sélectionner les fichiers à copier.
            Valeur par défaut = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Synchronise le contenu des répertoires spécifiés, supprime également tous les fichiers et répertoires de destination qui n'existent pas dans la source

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Déplacera au lieu de copier tous les fichiers de la source vers la destination

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> Copiera également la propriété, les descripteurs de sécurité et les informations d'audit des fichiers et répertoires

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Copie uniquement les fichiers de la source et ignore les sous-dossiers (pas de récursion)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> Ne copie pas les répertoires s'ils seraient vides

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Créer uniquement l'arborescence des répertoires

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Créer l'arborescence des répertoires et des fichiers de taille zéro uniquement

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> Ne pas copier les liens symboliques, les jonctions ou le contenu qu'ils pointent

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> Ne copiez pas les liens symboliques de fichiers mais suivez les jonctions de répertoires

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> Au lieu de copier le contenu vers lequel pointent les liens symboliques, copiez les liens eux-mêmes.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> Ne copiez pas les points de jonction de répertoires (lien symbolique pour un dossier) ni le contenu vers lequel ils pointent

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> Au lieu de copier le contenu vers lequel pointent les jonctions, copier les jonctions elles-mêmes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Va copier tous les fichiers même s'ils sont plus anciens que ceux dans la destination

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Copie uniquement les fichiers qui ont l'attribut d'archive défini

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> En plus de copier uniquement les fichiers qui ont l'attribut d'archive activé, va ensuite réinitialiser cet attribut sur la source

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Exclure tous les fichiers qui correspondent à l'un de ces noms/chemins/wildcards

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Exclure tous les répertoires qui correspondent à l'un de ces noms/chemins/expressions génériques

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Copier uniquement les fichiers qui possèdent tous ces attributs définis [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Exclure les fichiers qui possèdent l'un de ces attributs [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Définira les attributs donnés aux fichiers copiés [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Supprimera les attributs donnés des fichiers copiés [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Copier uniquement les n premiers niveaux de l'arborescence du répertoire source

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> Ignorer les fichiers dont la taille est inférieure à n octets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> Ignorer les fichiers dont la taille dépasse n octets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> Ignorer les fichiers qui ne sont pas au moins : n jours anciens OU créés avant la date n (si n < 1900 alors n = n jours, sinon n = date AAAAMMJJ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Ignorer les fichiers plus anciens que : n jours OU créés après n date (si n < 1900 alors n = n jours, sinon n = date AAAAMMJJ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Ignorer les fichiers qui ont été consultés au cours des : n derniers jours OU avant la date n (si n < 1900, alors n = n jours, sinon n = date AAAAMMJJ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Ignorer les fichiers qui n'ont pas été consultés depuis : n jours OU après n date (si n < 1900 alors n = n jours, sinon n = date AAAAMMJJ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Fera une brève pause et réessayera en cas d'erreurs d'E/S lors de la copie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Restera actif après la copie, et copiera les modifications supplémentaires après un seuil par défaut de 10 minutes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Relancer dans n minutes, si modifié

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> Exécuter à nouveau lorsque plus de n changements sont observés

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Heures d'exécution - moments auxquels de nouvelles copies peuvent être démarrées, heure de début, plage 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Heures d'exécution - moments où de nouvelles copies peuvent être démarrées, heure de fin, plage 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Si spécifié, la journalisation sera également effectuée dans le fichier spécifié

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> Ne pas ajouter au fichier journal spécifié, mais écraser à la place

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Inclure tous les noms de répertoires analysés dans la sortie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Inclure tous les noms de fichiers analysés dans la sortie, même ceux ignorés

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Afficher l'état en UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Active l'optimisation pour la copie de fichiers volumineux

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Optimisez les performances en effectuant une copie multithreadée

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> Si possible, utilisez la compression lors de la copie de fichiers entre serveurs pour économiser de la bande passante et du temps.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> Lorsqu'elle est définie, utilise la correspondance de timestamp en millisecondes au lieu de la tolérance par défaut de 2 secondes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Remplace, supprime ou ajoute un paramètre robocopy spécifié.

Utilisation :

Ajouter ou remplacer un paramètre :

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Supprimer un paramètre :

    -Override -/Switch

Plusieurs remplacements :

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRCopy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRExpand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRFind-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRFind-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRMove-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRWrite-TextFileAtomic.md)
