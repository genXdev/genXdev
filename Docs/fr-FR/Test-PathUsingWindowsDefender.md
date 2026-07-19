# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Analyse les fichiers ou dossiers à la recherche de logiciels malveillants à l'aide de Windows Defender.

## Description

* Effectue une analyse ciblée de fichiers ou répertoires spécifiques à l'aide de l'interface en ligne de commande de Windows Defender (MpCmdRun.exe).
* Peut analyser en mode détection uniquement ou avec correction automatique des menaces activée.
* Renvoie true si aucune menace n'est détectée, false si des menaces sont trouvées ou si l'analyse échoue.

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le chemin vers le fichier ou le répertoire à analyser |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Enjoint à Windows Defender d'agir face aux menaces |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

Analyse le fichier spécifié et affiche une sortie détaillée.

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

Analyse le fichier en utilisant l'alias et active la correction.

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

Transmet le chemin du fichier à l'applet de commande à l'aide d'un alias.

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
