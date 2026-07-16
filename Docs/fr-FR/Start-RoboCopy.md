# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Le répertoire, le chemin d'accès, ou le répertoire+masque de recherche |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Le répertoire de destination où placer les fichiers et répertoires copiés.
            Si ce répertoire n'existe pas encore, tous les répertoires manquants seront créés.
            Valeur par défaut = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Masque de recherche facultatif pour sélectionner les fichiers à copier.
Valeur par défaut = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synchronise le contenu des répertoires spécifiés, supprimera également tous les fichiers et répertoires dans la destination qui n'existent pas dans la source |
| `-Move` | SwitchParameter | — | — | Named | — | Déplacera au lieu de copier tous les fichiers de la source vers la destination |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Copiera également les informations de propriétaire, les descripteurs de sécurité et les informations d'audit des fichiers et répertoires |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copie uniquement les fichiers de la source et ignore les sous-dossiers (pas de récursion) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Ne copie pas les répertoires s'ils seraient vides *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Create a directory tree only. *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Create directory tree and zero-length files only |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Ne copiez pas les liens symboliques, les jonctions ou le contenu vers lequel ils pointent |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Ne copiez pas les liens symboliques de fichiers mais suivez les jonctions de répertoires |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Au lieu de copier le contenu vers lequel pointent les liens symboliques, copiez les liens eux-mêmes |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Ne copiez pas les jonctions de répertoires (lien symbolique vers un dossier) ni le contenu vers lequel elles pointent *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Instead of copying the content where junctions point to, copy the junctions themselves *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Will copy all files even if they are older then the ones in the destination |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Copie uniquement les fichiers qui ont l'attribut archive activé |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | En plus de copier uniquement les fichiers qui ont l'attribut d'archive défini, réinitialisera ensuite cet attribut sur la source |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Exclure tous les fichiers correspondant à l'un de ces noms, chemins ou expressions génériques 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Exclure tous les répertoires qui correspondent à l'un de ces noms/chemins/masques *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Copier uniquement les fichiers qui ont tous ces attributs définis [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Exclure les fichiers qui possèdent l'un de ces attributs définis [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Définira les attributs donnés aux fichiers copiés [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Supprimera les attributs donnés des fichiers copiés [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Only copy the top n levels of the source directory tree *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Ignorer les fichiers d'une taille inférieure à n octets |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Passer les fichiers plus grands que n octets |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Ignorer les fichiers qui n'ont pas au moins : n jours d'ancienneté OU créés avant la date n (si n < 1900 alors n = n jours, sinon n = date AAAAMMJJ) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Skip files that are older than: n days OR created after n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Skip files that are accessed within the last: n days OR before n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Passer les fichiers qui n'ont pas été consultés depuis : n jours OU après n date (si n < 1900 alors n = n jours, sinon n = date AAAAMMJJ) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Va brièvement faire une pause et réessayer en cas d'erreurs d'E/S lors de la copie |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Restera actif après la copie, et copiera les modifications supplémentaires après un délai par défaut de 10 minutes |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Ре-exécuter dans n minutes si modifié |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Run again when more than n changes seen |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Heures de fonctionnement - moments où de nouvelles copies peuvent être démarrées, heure de début, plage 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Heures de fonctionnement - moments où de nouvelles copies peuvent être démarrées, heure de fin, plage 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Si spécifié, la journalisation sera également effectuée dans le fichier spécifié |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Ne pas ajouter au fichier journal spécifié, mais écraser à la place |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | I have included all scanned directory names in the output. |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Include all scanned file names in output, even skipped onces |
| `-Unicode` | SwitchParameter | — | — | Named | — | UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Active l'optimisation pour la copie de grands fichiers |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimisez les performances en effectuant une copie multithreadée |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Si possible, utilisez la compression lors de la copie de fichiers entre serveurs pour économiser de la bande passante et du temps |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Lorsqu'il est défini, utilisera une correspondance de timestamp en millisecondes au lieu de la tolérance par défaut de 2 secondes |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Remplace, supprime ou ajoute tout paramètre robocopy spécifié.

Utilisation :

Ajouter ou remplacer un paramètre :

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Supprimer un paramètre :

    -Override -/Switch

Plusieurs remplacements :

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
