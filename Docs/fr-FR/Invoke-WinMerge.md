# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Lance WinMerge pour comparer deux fichiers côte à côte.

## Description

Lance l'application WinMerge pour comparer les fichiers source et cible dans une vue de différences côte à côte. La fonction valide l'existence des deux fichiers d'entrée et s'assure que WinMerge est correctement installé avant le lancement. Fournit une fonctionnalité d'attente optionnelle pour suspendre l'exécution jusqu'à la fermeture de WinMerge.

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | Chemin vers le fichier source à comparer |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | Chemin du fichier cible à comparer |
| `-Wait` | SwitchParameter | — | — | Named | — | Attendez la fermeture de WinMerge avant de continuer |

## Examples

### Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `                 -TargetcodeFilePath "C:\target\file2.txt" `                 -Wait

```powershell
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait
```

### merge "C:\source\file1.txt" "C:\target\file2.txt"

```powershell
merge "C:\source\file1.txt" "C:\target\file2.txt"
```

## Related Links

- [Invoke-WinMerge on GitHub](https://github.com/genXdev/genXdev)
